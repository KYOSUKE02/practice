import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text ('kyosuketube'),
        ),
      body: Center(
        child: Column(
        children: [
              Text(
                'aboyText',
                style:TextStyle(
                  fontSize: 30,
                )
              )
        ],
      ),
      ),
    ),
    );
  }
}


