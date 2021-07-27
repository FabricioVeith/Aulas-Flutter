import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loteria_app/model/number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loteria',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: MyHomePage(title: 'loteria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Number number = Number();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('loteria'),),
      body: Center(
        child: Text(
            '${number.toString()}',
          style: TextStyle(
            fontSize: 30
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('resultado');
          setState(() {
            number.generateRandomicNumnber();
          });

          },
        tooltip: 'loteria',
        child: Icon(Icons.add),
      ),
    );
  }
}