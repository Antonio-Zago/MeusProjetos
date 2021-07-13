import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_tinder/login/tema.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.center, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xAAfe615d),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: MediaQuery.of(context).size.width * 0.2),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/logo.png'),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Location Changer",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: RaisedButton(
                    child: Text("Login Com Facebook", style: TextStyle(color: Colors.red),),
                    onPressed: () {},
                  )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
