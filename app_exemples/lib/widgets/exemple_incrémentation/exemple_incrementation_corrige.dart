import 'package:flutter/material.dart';

class ExempleIncrementationCorrige extends StatefulWidget {
  const ExempleIncrementationCorrige({super.key});

  @override
  State<ExempleIncrementationCorrige> createState() => _ExempleIncrementationCorrigeState();
}



class _ExempleIncrementationCorrigeState extends State<ExempleIncrementationCorrige> {
  int counter = 0;

  void increment(){
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("$counter", style: const TextStyle(fontSize: 35)),
        ElevatedButton(onPressed: () {increment();}, child: const Text("+1", style: TextStyle(fontSize: 25)))
      ],
    );
  }
}