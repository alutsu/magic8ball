import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int answer = 1;

  void changeAnswer() {
    setState(() {
      answer = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
      ),
      backgroundColor: Colors.blueAccent[100],
      body: Center(
        child: FlatButton(
          onPressed: () {
            changeAnswer();
          },
          child: Image.asset('images/ball$answer.png'),
        ),
      ),
    );
  }
}
