import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';

class AppWidget extends StatelessWidget {
  //Widget sem estado, não pode ser alterado
  //Herda de uma widget statelesswidget
  //Criação de uma classe dart

  final String? nome; //Criação de um atributo
  final int? idade;

  const AppWidget({Key? key, this.nome, this.idade})
      : super(key: key); //Criação do construtor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}
