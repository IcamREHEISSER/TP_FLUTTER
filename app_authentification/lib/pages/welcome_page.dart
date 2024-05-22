import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("BIENVENUE !", 
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
        ,)
      ,)
    ,);
  }
}