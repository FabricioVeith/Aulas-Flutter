import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futuro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Home('Futuro'),
    );
  }
}

class Home extends StatefulWidget {

  final String title;

  Home(this.title);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text('Feito ${_name}'),
          TextButton(
            onPressed: () async {
              print('clicou');
              setState(() {
                _name = _getName();

              });

                print(_sayHello());
                
                print(await _sayHello());
                print('aguardou');
                print(await _sayHi());

                _waitForMe().then((_) {
                 print('olha thennnnn') ;
                }).catchError((error) {
                  print('olha o errouuuuuuu');
                });
                print("agora vai");

                },
            child: Text('clica aqui para ve que o nome'),
          ),
        ],
      ),
    );
  }

  String _getName() {
    return 'Fabricio';
  }

  Future _sayHello() async {
    var name = 'Hello';
    return name;
  }


  Future _sayHi() async {
    return 'Hi';
  }


  Future _waitForMe() async {
    print('iniciou');

    return Future.delayed(Duration(seconds: 3),() {
      print('Finalizou');
      setState(() {
        _name = 'Vegeta olha bemmmmmmm';
      });
    });
  }
}
