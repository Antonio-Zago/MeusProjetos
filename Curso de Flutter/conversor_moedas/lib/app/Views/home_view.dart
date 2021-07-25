import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            children: [
              Expanded(child: TextField(),),
              Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
