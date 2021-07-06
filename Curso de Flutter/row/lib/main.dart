import 'package:flutter/material.dart';
import 'package:row/mudarTema.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Mudanca.estancia,
        builder: (context, child) {
          return MaterialApp(
              home: Home(),
              theme: ThemeData(
                  brightness: Mudanca.estancia.tema
                      ? Brightness.dark
                      : Brightness.light));
        });
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: Mudanca.estancia.tema,
        onChanged: (valor) {
          Mudanca.estancia.MudarTema();
        });
  }
}
