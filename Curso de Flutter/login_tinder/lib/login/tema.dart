import 'package:flutter/cupertino.dart';

class Tema extends ChangeNotifier{
  static Tema mudanca = new Tema();

  bool temaDark = false;

  MudarTema(){
    temaDark = !temaDark;
    notifyListeners();
  }
}