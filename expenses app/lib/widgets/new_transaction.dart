import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  Function transactionAdd;

  NewTransaction(this.transactionAdd);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();

  final _priceController = TextEditingController();

  DateTime _selectDate = DateTime.now();

  void _submitData() {

    if(_priceController.text.isEmpty){
      return;
    }

    final label = _titleController.text;
    double number = double.parse(_priceController.text);

    if (label.isEmpty || number <= 0) {
      return;
    }

    number = double.parse(number.toStringAsFixed(2));

    widget.transactionAdd(
      label,
      number,
      _selectDate
    );

    Navigator.of(context).pop();
  }

  void _percentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectDate = pickedDate;
      });
    });
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
                controller: _titleController,
                onSubmitted: (_) => _submitData()),
            TextField(
              decoration: InputDecoration(labelText: 'second'),
              controller: _priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectDate == null
                        ? "no date chosen!"
                        : 'picked date: ${DateFormat.yMd().format(_selectDate)}'),
                  ),
                  FlatButton(
                    textColor: Colors.purple,
                    child: Text(
                      'choose Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: _percentDatePicker,
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('add'),
              color: Colors.purple,
              textColor: Color.fromARGB(255, 255, 255, 255),
              onPressed: _submitData,
            ),
          ],
        ),
      ),
    );
  }
}
