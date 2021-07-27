import 'package:flutter/material.dart';
import 'package:imagen_app/components/constant.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _tabBar() {
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.attach_money),),
        Tab(icon: Icon(Icons.addchart_sharp),),
        Tab(icon: Icon(Icons.app_blocking),),
      ],
    );
  }

  Widget _column(String imagem, String titulo, String texto) {
    return Column(
      children: [
        Image.asset(imagem),
        Text(titulo),
        SizedBox(
          height: 50,
        ),
        Text(texto),


      ],
    );
  }

  Widget _tabBarView() {
    return TabBarView(
      children: [
        _column(Constant.IMAGEM1, Constant.TITULO1, Constant.ARMADURA_DIVINA),
        _column(Constant.IMAGEM2, Constant.TITULO2, Constant.GAARA_DO_DESERT0),
        _column(Constant.IMAGEM3, Constant.TITULO3, Constant.CHORNO_TRIGGER),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('Imagens de otaku fedido'),
            bottom: _tabBar()
          ),
          body: _tabBarView()

      ),
    );




  }
}


