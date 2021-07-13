import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_tinder/login/body.dart';
import 'package:login_tinder/login/tema.dart';

class login extends StatelessWidget {
  const login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: Tema.mudanca, builder: (context, child){
      return MaterialApp(
        theme: Tema.mudanca.temaDark ? ThemeData.dark() : ThemeData.light(),
        home: body(),
      );
    });
  }
}