import 'package:flutter/material.dart';
import 'package:listview/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: app.estancia, builder: (context, child){
      return MaterialApp(
        theme: ThemeData(brightness: app.estancia.dark ? Brightness.light : Brightness.dark),
        home: Home(),
      );
    });
  }

}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.horizontal, //Determina a direção do scrool
          children: [
          ContainerPersonalizado(),
          Container(color: Colors.yellow, height: 200, width: 200,),
          ContainerPersonalizado(),
          Container(color: Colors.yellow,height: 200, width: 200,),
          ContainerPersonalizado(),
          Container(color: Colors.yellow,height: 200,width: 200,),
          ContainerPersonalizado(),
          Container(color: Colors.yellow,height: 200,width: 200,),
          ContainerPersonalizado(),
        ],),
      )
    );
  }

}


class ContainerPersonalizado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black, width: 200, height: 200,);
  }

}
