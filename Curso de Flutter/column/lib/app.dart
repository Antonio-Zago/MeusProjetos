
import 'package:flutter/cupertino.dart';

class App extends ChangeNotifier{

  static App instancia = new App();

  bool temaDark = false;
  mudarTema(){
    temaDark = !temaDark;
    notifyListeners();
  }
}