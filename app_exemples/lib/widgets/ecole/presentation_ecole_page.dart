import 'package:flutter/material.dart';

class PresentationEcolePage extends StatelessWidget {
  const PresentationEcolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("Bienvenue à l'Icam, site de Strasbourg-Europe", 
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(height: 1),
                ),
                Image.asset('assets/icamSE.png', width: 300, height: 200,),
                const Text("Découvrez notre site de Strasbourg, au coeur de la Capitale Européenne. Un nid d'opportunités pour tous les étudiants du monde !", textAlign: TextAlign.center,),
                Image.asset('assets/strasbourg.png', width: 300, height: 200,),
              ],
            ),
          ),
        )
    );
  }
}
