import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  Function transactionAdd;

  NewTransaction(this.transactionAdd);

  void submitData() {
    final label = titleController.text;
    double number = double.parse(priceController.text);

    if (label.isEmpty || number <= 0) {
      return;
    }

    number = double.parse(number.toStringAsFixed(2));

    transactionAdd(
      label,
      number,
    );
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
            FlatButton(
              child: Text('add'),
              textColor: Colors.purple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
