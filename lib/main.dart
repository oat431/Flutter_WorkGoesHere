import 'package:flutter/material.dart';
import 'dart:math';
import './text.dart';
import './button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List _greeting = [
    "Good morning",
    "Good afternoon",
    "Good Evening",
    "Good nigth",
    "I Like your hair style",
    "I Like your song",
    "I Like your passion"
  ];

  var _rand = new Random();
  String _showWord;

  void _genWord() {
    setState(() {
      _showWord = _greeting[_rand.nextInt(_greeting.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random messages"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Ptext(_showWord ?? ''), Pbutton(_genWord)],
          ),
        ),
      ),
    );
  }
}
