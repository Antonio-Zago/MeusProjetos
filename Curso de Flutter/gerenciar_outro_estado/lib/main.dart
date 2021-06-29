import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyappFull(),
      theme: ThemeData.dark(),
    );
  }

}

class MyappFull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyappFullState();
  }

}

class MyappFullState extends State<MyappFull>{


  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar outros estados'),),
      body: Center(
        child: Switch(
          value: isDarkTheme,
          onChanged: (vale){ //Modifica o valor de um booleano
            setState(() {
              isDarkTheme = vale;
            });
          },
        )
      ),
    );
  }

}