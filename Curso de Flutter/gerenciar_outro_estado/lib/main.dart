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
      ),
      body: Center(
          child: Switch(
        value: App.instancia.isDarkTheme,
        onChanged: (vale) {
          //Modifica o valor de um booleano
          App.instancia.mudarTema();
        },
      )),
    );
  }
}
