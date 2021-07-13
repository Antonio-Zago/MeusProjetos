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


  Widget _body(){ //Criação de um método que retorna o corpo da página
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width, //Usa esse para pegar a tela inteira, não pode ser double infinity
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.network('https://i.kym-cdn.com/entries/icons/original/000/009/803/spongebob-squarepants-patrick-spongebob-patrick-star-background-225039.jpg'),
                  ),  //Pega imagem da internet

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
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
                    ],
                                  ),
                  ),),
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
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Antonio Zago"), accountEmail: Text("Antonio@zago.com"), currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network('https://i.kym-cdn.com/entries/icons/original/000/009/803/spongebob-squarepants-patrick-spongebob-patrick-star-background-225039.jpg')),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),  
              subtitle: Text("Tela inicial"),
              onTap: (){
                print("Teste");
              },
            ),
            ListTile(
              title: Text("Sair"),
              leading: Icon(Icons.exit_to_app),
              onTap: (){
                Navigator.of(context).pushNamed('/home');
              },
            )
          ],
        ),
      ), //Menu de hamburguer
      body: Stack( //Empilha widget
        children: [
          Container(color: Colors.green.withOpacity(0.5),),
          _body(),
      ],
      )
    );
  }
}
