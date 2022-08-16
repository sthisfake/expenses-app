import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_lis.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          NewTransaction(),
          TransactionList() ,
      ],
    );
  }
}