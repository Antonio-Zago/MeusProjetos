import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

TextEditingController txtcep = new TextEditingController();
String resultado = "";

class HomeState extends State<Home> {
  consultaCep() async {
    String cep = txtcep.text;
    String url = "https://viacep.com.br/ws/${cep}/json/";

    http.Response response;
    response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String cidade = retorno["localidade"];
    String bairro = retorno["bairro"];

    setState(() {
      resultado = "${logradouro}, ${cidade}, ${bairro}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultar API"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: txtcep,
            ),
            Text("Resultado = ${resultado}"),
            IconButton(
                onPressed: () {
                  consultaCep();
                },
                icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
