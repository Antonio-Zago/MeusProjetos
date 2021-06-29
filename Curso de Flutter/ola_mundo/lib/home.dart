import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Center(
        child: Text(
          'Contador: $valor',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
              valor++; //Boa pratica colocar tudo que for modificar no setState
              if (valor == 20) {
                valor = 0;
              }
            });
        },
      ),
    );
  }
}
