import 'package:flutter/cupertino.dart';

class App extends ChangeNotifier {
  static App instancia = App(); //Criando uma instancia estatica de App

  bool isDarkTheme = false;
  mudarTema() {
    //Método para mudança de tema
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
