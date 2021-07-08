import 'package:flutter/material.dart';
import 'package:pag_login/homepage.dart';

void main() {
  runApp(MainLogin());
}

class MainLogin extends StatelessWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => login(),
        '/home': (context) => HomePage(),
      },
      theme: ThemeData.dark(),
    );
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context)
              .size
              .width, //Usa esse para pegar a tela inteira, não pode ser double infinity
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (digitado) {
                    email = digitado;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (digitado) {
                    email = digitado;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    /*Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage())); //Mudança de página
                  },*/ //Mudança de página manual
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text("Entrar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
