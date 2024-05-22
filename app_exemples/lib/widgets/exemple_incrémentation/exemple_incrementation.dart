import 'package:flutter/material.dart';

import '../composants/mon_bouton.dart';

class ExempleIncrementation extends StatefulWidget {
  const ExempleIncrementation({super.key, this.couleurBoutons = Colors.white, this.couleurTextes = Colors.black});

  final Color couleurBoutons;
  final Color couleurTextes;

  @override
  State<ExempleIncrementation> createState() => _ExempleIncrementationState();
}

class _ExempleIncrementationState extends State<ExempleIncrementation> {
  int counter = 0;
  
  void modifyValue(int value) {
    setState(() {counter += value;});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("$counter",style: const TextStyle(fontSize: 40),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MonBouton(value: -1, onButtonPressed: (value) { modifyValue(value);}, textColor: widget.couleurTextes, buttonColor: widget.couleurBoutons),
            MonBouton(value: 1, onButtonPressed: (value) { modifyValue(value);}, textColor: widget.couleurTextes, buttonColor: widget.couleurBoutons),
          ],
        )
      ],
    );
  }
}


