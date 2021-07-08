import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: App.instancia,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness:
                    App.instancia.tema ? Brightness.dark : Brightness.light),
            home: Main(),
          );
        });
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mudança de página"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: App.instancia.tema,
                onChanged: (valor) {
                  App.instancia.mudarTema();
                })
          ],
        ),
      ),
    );
  }
}

class App extends ChangeNotifier {
  static App instancia = new App();
  bool tema = false;
  mudarTema() {
    tema = !tema;
    notifyListeners();
  }
}
