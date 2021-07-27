import 'package:flutter/material.dart';

import 'model/calculadora.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Formulario'),
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
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController _valorController = new TextEditingController();
  TextEditingController _valorController2 = new TextEditingController();

  _rowIcon() {
    return Icon(Icons.addchart_sharp, size: 150,);
  }

  _rowValor() {
    return TextFormField(
      controller: _valorController,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(hintText: 'Valor1'),
      maxLength: 10,
      validator: (value) {
        if (value.isEmpty) {
          return 'Digite um valor';
        }
        return null;
      },
    );
  }

  _rowValor2() {
    return TextFormField(
      controller: _valorController2,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(hintText: 'Valor2'),
      maxLength: 10,
      validator: (value) {
        if (value.isEmpty) {
          return 'Digite um valor';
        }
        return null;
      },
    );
  }

  _rowButton(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        _calculetor(context);
        _resetFields();
      },
      label: Text('Calcular'),
      icon: Icon(Icons.add),
    );
  }

  _formUI(BuildContext context) {
    return Column(
      children: [
        _rowIcon(),
        _rowValor(),
        _rowValor2(),
        _rowButton(context),
      ],
    );
  }


  _rowForm(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: _formUI(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _rowForm(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _calculetor(BuildContext context) {
    if (_formKey.currentState.validate()) {
      //print('valor é');
      //print('O Resultado é ${_valorController.text.toString()}');
      //print('O Resultado é ${_valorController2.text.toString()}');

      //double valor = double.tryParse(_valorController.text);
      //double valor2 = double.tryParse(_valorController2.text);

      //var soma = valor + valor2;
     // print('A soma é ${soma}');

      final calculadora = Calculadora(double.tryParse(_valorController.text)
          ,double.tryParse(_valorController2.text));

      print('Resultado ${calculadora.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Resultado ${calculadora.toString()}'),)
      );

    } else {
      print ('Digite os campos');
    }
  }

  _resetFields() => _formKey.currentState.reset();
}