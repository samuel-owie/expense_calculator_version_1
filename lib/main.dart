// ignore_for_file: prefer_const_literals_to_create_immutables

import './transaction.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatelessWidget{
  final List<Transanction> transactions = [
    Transanction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now()
      ),
      Transanction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.99,
      date: DateTime.now()
      ),
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Flutter App'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

        // first segment of app 
        //second way of
        Container(

          width: double.infinity,
          child: Card(
            color: Colors.blue, 
            child: Text('CHART!'),
            elevation: 5,
            ),
          
          ),

        
        // one way of controlling the dimension contents can occupy in the screen.
        /*
        Card(
          color: Colors.blue,
          child: Container(
            width: double.infinity,
            child: Text('Chart!'),),
          elevation: 5,
          ),
    */
    
         // second segment of app 
        Column(
          children: transactions.map((tx) {
            return Card(
              child: Row(children: <Widget>[
                Container(
                  child: Text(
                    tx.amount.toString(),
                    ),
                  ),

                  Column(
                    children: <Widget>[
                      Text(tx.title),
                      Text(tx.date.toString()),
                    ]
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ],

      ),

      );
  }

}