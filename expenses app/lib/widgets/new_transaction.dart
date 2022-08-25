import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function transactionAdd;

  NewTransaction(this.transactionAdd);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final priceController = TextEditingController();

  void submitData() {
    final label = titleController.text;
    double number = double.parse(priceController.text);

    if (label.isEmpty || number <= 0) {
      return;
    }

    number = double.parse(number.toStringAsFixed(2));

    widget.transactionAdd(
      label,
      number,
    );

   Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: 'first'),
                controller: titleController,
                onSubmitted: (_) => submitData()),
            TextField(
              decoration: InputDecoration(labelText: 'second'),
              controller: priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget> [
                  Text("no date chosen!"),
                  FlatButton(
                    textColor: Colors.purple,
                    child: Text('choose Date' , style: TextStyle(fontWeight: FontWeight.bold),),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('add'),
              color: Colors.purple,
              textColor: Color.fromARGB(255, 255, 255, 255),
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
