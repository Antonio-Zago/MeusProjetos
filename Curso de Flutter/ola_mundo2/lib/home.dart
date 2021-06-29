import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Container(
        width: 250,
        height: 250,
        color: Colors.white,
        child: Container( //Não utiliza o single render, dessa forma o container erda caracteristicas do pai
          width: 25,
          height: 25,
          color: Colors.red,
          child: Center( //Utiliza o single render dessa forma sobscreve a última widget
            child: Container(
              width: 10,
              height: 10,
              color: Colors.green,
            ),
          ),
        ),
        ),
      );
  }

}