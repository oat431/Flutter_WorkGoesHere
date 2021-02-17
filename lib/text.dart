import 'package:flutter/material.dart';

class Ptext extends StatelessWidget {
  String _context;
  Ptext(this._context);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Text(
        _context,
        style: TextStyle(color: Colors.lightGreen, fontSize: 30),
      ),
    );
  }
}
