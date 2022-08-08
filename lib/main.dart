import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(child: Text("8 Ball Game")),
      ),
      body: ball_game(),
    ),
  ));
}

class ball_game extends StatefulWidget {
  @override
  State<ball_game> createState() => _ball_gameState();
}

class _ball_gameState extends State<ball_game> {
  int b = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                setState((){
                  b=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('img/ball$b.png'),
            ),
          ),
        ),
      ),
    );
  }
}
