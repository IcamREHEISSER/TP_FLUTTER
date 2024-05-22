import 'package:flutter/material.dart';

class ExempleAlignementPage extends StatelessWidget {
  const ExempleAlignementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: Container(
          width: 180,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 20, height: 40, color: Colors.red),
              Container(width: 20, height: 40, color: Colors.blue),
              Container(width: 20, height: 40, color: Colors.orange),
            ],
          ),
        )));
  }
}
