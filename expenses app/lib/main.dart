import 'package:flutter/material.dart';
import 'package:second_app/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> transaction = [
    Transaction("money for nothing", 22),
    Transaction("ice cream", 7)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
          Column(
            children: transaction.map((sth) {
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
                          color: Colors.blue ,
                          width: 1 ,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        sth.price.toString()
                      ),
                    ),
                    Column(children: <Widget> [
                      Text(sth.title.toString()),
                      Text(sth.date.toString())
                    ],)
                  ]
                  ,)
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
