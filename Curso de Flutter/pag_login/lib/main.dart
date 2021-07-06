import 'package:flutter/material.dart';

void main() {
  runApp(MainLogin());
}

class MainLogin extends StatelessWidget {
  const MainLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: login(),theme: ThemeData.dark(),);
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {

  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
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
                onChanged: (digitado){
                  email = digitado;
                },
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                ),
                onChanged: (digitado){
                  email = digitado;
                },
              ),
              SizedBox(height: 15,),
              RaisedButton(onPressed: (){}, child: Text("Entrar"),)
            ],),
        ),
      ),);
  }
}