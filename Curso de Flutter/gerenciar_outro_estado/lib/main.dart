import 'package:flutter/material.dart';

import 'AppWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: App.instancia,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: App.instancia.isDarkTheme
                    ? Brightness.light
                    : Brightness.dark),
            home: MyappFull(),
          );
        });
  }
}

class MyappFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappFullState();
  }
}

class MyappFullState extends State<MyappFull> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar outros estados'),
        actions: [CustomSwitch()],
      ),
      body: Center(
          child: CustomSwitch()),
    );
  }
}

//Componentização
class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: App.instancia.isDarkTheme,
        onChanged: (vale) {
          //Modifica o valor de um booleano
          App.instancia.mudarTema();
        },
      );
  }
}
