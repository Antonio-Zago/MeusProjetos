import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(Main());
}



class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: App.instancia, builder: (context, child){
      return MaterialApp(
        theme: ThemeData(
          brightness: App.instancia.temaDark ? Brightness.light : Brightness.dark,
        ),
        home: Home(),
      );
    },);
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{

  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Columns"),),
      body: Column(
        children: [
          CustomSwitch(),
          CustomSwitch(),
          IconButton(onPressed: (){
            setState(() {
              cont++;
            });
          }, icon: Icon(Icons.add)),
          Text("Valor: $cont")
        ],
      )
    );
  }

}

class CustomSwitch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(value: App.instancia.temaDark, onChanged: (valor){
      App.instancia.mudarTema();
    },);
  }

}
