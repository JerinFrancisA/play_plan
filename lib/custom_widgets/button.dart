import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.text, @required this.onPressed});

  final text;
  String input;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}