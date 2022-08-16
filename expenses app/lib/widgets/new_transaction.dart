import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  Function transactionAdd;

  NewTransaction(this.transactionAdd);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'second'),
              controller: priceController,
            ),
            FlatButton(
              child: Text('add'),
              textColor: Colors.purple,
              onPressed:() { transactionAdd(
                titleController.text,
                double.parse(priceController.text),
              );
              },
            ),
          ],
        ),
      ),
    );
  }
}
