import 'package:flip_card/flip_card.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cartão nubank'),
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

 GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

_renderBackground() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white
    ),
  );
}

_renderBack(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:25),
              child: Container(
                width: MediaQuery.of(context).size.width -20,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),

            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150,left: 10),
            ),
            Image.asset('images/cirrus_logo.png',width: 70,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('6666 6666 6666 6666',style: TextStyle(fontSize: 14,color: Colors.white),)
          ],
        )
      ],
    ),
  );
}


_renderFront() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.purple,
      borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),

    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15,right: 15),
              child:Image.asset('images/mastercard_logo.png',width: 100,),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 50),
            ),
            Image.asset('images/sim_card.png',width: 70,),
            Image.asset('images/chip_cart.png',width: 30,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20,left: 50),
              child: Image.asset('images/nu_logo.png',width: 90,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text('Fabricio Veith',style: TextStyle(fontSize: 18,color: Colors.white),),
            ),
          ],
        ),


      ],
    ),
  );

}

_renderCard(BuildContext context) {
  return Card(
    elevation: 0.0,
    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 250.0,bottom: 200.0),
    color: Colors.white,
    child: FlipCard(
      key: _cardKey,
      flipOnTouch: true,
      direction: FlipDirection.HORIZONTAL,
      speed: 1000,
      onFlipDone: (status){
        print('status: $status');
      },
      front: _renderFront(),
      back: _renderBack(context),
    ),
  );
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _renderBackground(),
          Column(
            children: [
              Expanded(
                child: _renderCard(context),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _cardKey.currentState.toggleCard(),
        tooltip: 'Test',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
