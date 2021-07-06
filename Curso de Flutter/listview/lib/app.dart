import 'package:flutter/cupertino.dart';

class app extends ChangeNotifier{
  static app estancia = new app();

  bool dark = false;

  mudarTema(){
    dark = !dark;
    notifyListeners();
  }
}