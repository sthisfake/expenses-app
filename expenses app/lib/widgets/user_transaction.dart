import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_lis.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _UserTransactions = [
    Transaction('sth', 23.6),
    Transaction("gsdgs", 56.6),
  ];

  void _addTransaction(String title, double amount) {
    final neTx = Transaction(title, amount);
    

    setState(() {
      _UserTransactions.add(neTx) ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_UserTransactions),
      ],
    );
  }
}
