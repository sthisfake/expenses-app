import 'package:flutter/material.dart';
import 'package:second_app/widgets/new_transaction.dart';
import 'package:second_app/widgets/transaction_lis.dart';

import 'widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second App'),
        actions: <Widget> [
          IconButton(icon: Icon(Icons.add),
          onPressed: () {},
          )
        ],
      ),
      body:SingleChildScrollView( 
      child :Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
        UserTransaction()
        ],
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add ,),
        onPressed: () {},
        ),
    );
  }
}
