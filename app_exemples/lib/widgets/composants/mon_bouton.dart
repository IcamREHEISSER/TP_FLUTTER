import 'package:flutter/material.dart';

class MonBouton extends StatelessWidget {
  const MonBouton({super.key, required this.value, required this.onButtonPressed, 
    this.buttonColor = Colors.white, this.textColor = Colors.black});

  final int value;
  final void Function(int) onButtonPressed;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {onButtonPressed(value);},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor),
      child: Text("$value", 
        style: TextStyle(fontSize: 40, color: textColor),
      ),
    );
  }
}