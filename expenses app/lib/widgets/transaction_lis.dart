import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return           Column(
            children: _userTransactions.map((sth) {
              return Card(
                child :Row(
                  children:<Widget> [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15 ,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.cyan ,
                          width: 1 ,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$' + sth.price.toString(),
                        style: TextStyle(
                          color: Colors.cyan ,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Column(children: <Widget> [
                      Text(sth.title.toString(),
                        style : TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                        )
                      ),
                      Text(
                        DateFormat().add_yMMMd().format(sth.date),
                        style: TextStyle(
                          color: Color.fromARGB(255, 18, 104, 174)
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ]
                  ,)
              );
            }).toList(),
          );
  }
}