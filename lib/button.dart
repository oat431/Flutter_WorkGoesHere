import 'package:flutter/material.dart';

class Pbutton extends StatelessWidget {
  var _method;
  Pbutton(this._method);
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 130,
      height: 50,
      child: RaisedButton(
        textColor: Colors.white70,
        onPressed: _method,
        color: Colors.green,
        child: Text("generate"),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
    );
  }
}
