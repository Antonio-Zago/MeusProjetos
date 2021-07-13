import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_tinder/login/tema.dart';

class body extends StatefulWidget {
  const body({ Key? key }) : super(key: key);

  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xAAfe615d),
            ),
            Container(
              child: Image.asset('assets/logo.png'),
            ),
            Switch(value: Tema.mudanca.temaDark, onChanged: (valor){
              Tema.mudanca.MudarTema();
            }),
          ]
        ),
      ),
      );
  }
}