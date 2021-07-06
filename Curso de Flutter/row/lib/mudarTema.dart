import 'package:flutter/cupertino.dart';

class Mudanca extends ChangeNotifier {
  static Mudanca estancia = new Mudanca();
  bool tema = false;

  MudarTema() {
    tema = !tema;
    notifyListeners();
  }
}
