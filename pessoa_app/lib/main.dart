import 'package:flutter/material.dart';
import 'package:pessoa_app/model/person.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Idade',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Idade'),
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


  Person person = Person('Fabricio','fabricioveith@gmail.com','veith',22);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('enviou messagem');
          _showAlert(context,'${person.toString()}\n'
              'Idade em Semanas: ${person.calcularIdadeEmSemanas()} semanas\n'
              'Idade em Meses ${person.calcularIdadeEmMeses()} meses\n'
              'Idade em Horas ${person.calcularIdadeEmHora()} horas\n'
              'Idade em Minutos ${person.calcularIdadeEmMinutos()} minutos\n'
              '', title: 'Dados', yesButton: 'aceita', noButton: 'não' );

          },
        tooltip: 'hhh',
        child: Icon(Icons.add),
      ),
    );
  }
}

_showAlert(BuildContext context,String message,{String title,String yesButton, String noButton}) {
  AlertDialog alert = AlertDialog(
    title: Text(title ??'Atenção'),
    content: Text(message),
    actions: [
      TextButton(onPressed: () {
        print('clicou no sim');
        Navigator.of(context).pop();
      }, child: Text(yesButton ??'sim')),
      TextButton(onPressed: () {
          print('clicou no não');
          Navigator.of(context).pop();
      }, child: Text(noButton ??'não')),
    ],
  );
 showDialog(context: context, builder: (BuildContext context) {
   return alert;

 });
}
