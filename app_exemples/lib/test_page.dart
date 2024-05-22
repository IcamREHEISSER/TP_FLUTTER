import 'package:flutter/material.dart';
import 'package:helloworld/widgets/composants/mon_bouton.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MonBouton(value: 10, onButtonPressed: (valeurRenvoyee) {}),
            MonBouton(value: 20, onButtonPressed: (valeurRenvoyee) {}, textColor: Colors.red,),
            MonBouton(value: 30, onButtonPressed: (valeurRenvoyee) {}, textColor: Colors.white, buttonColor: Colors.blue
            ),
          ],
        ),
        )
    );
  }
}