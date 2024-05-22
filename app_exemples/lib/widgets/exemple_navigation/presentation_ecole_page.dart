import 'package:flutter/material.dart';

class PresentationPage extends StatelessWidget {
  const PresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("Le site de Strasbourg-Europe", 
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(height: 1),
                ),
                Image.asset('assets/icamSE.png', width: 300, height: 200,),
                const Text("Implantée au cœur de la Capitale Européenne, l'école d'ingénieur de Strasbourg-Europe offre un cadre d'études propice à la réussite et à l'épanouissement. Une architecture remarquable, un bâtiment écologique et lumineux, des laboratoires équipés avec du matériel de pointe et des extérieurs verdoyants font de lui l'endroit où il fait bon vivre, étudier et partager.",               ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text("Retour")),
              ],
            ),
          ),
        )
    );
  }
}
