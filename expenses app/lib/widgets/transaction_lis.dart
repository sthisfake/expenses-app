import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function deleteTx;

  TransactionList(this.transaction , this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: transaction.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'nothing added',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                    height: 200,
                    child: Image.asset(
                      "assets/waiting.png",
                      fit: BoxFit.cover,
                    ))
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.cyan,
                        width: 1,
                      )),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$' + transaction[index].price.toString(),
                        style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(transaction[index].title.toString(),
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            )),
                        Text(
                          DateFormat()
                              .add_yMMMd()
                              .format(transaction[index].date),
                          style: TextStyle(
                              color: Color.fromARGB(255, 18, 104, 174)),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          minWidth: 50.0,
                          height: 50.0,
                          child: Icon(Icons.delete , color: Color.fromARGB(255, 175, 80, 73),),
                          onPressed: () => deleteTx(transaction[index].id),
                        ),
                      ],
                    ),
                  ],
                ));
              },
              itemCount: transaction.length,
            ),
    );
  }
}
