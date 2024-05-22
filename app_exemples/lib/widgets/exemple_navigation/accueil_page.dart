import 'package:flutter/material.dart';
import 'package:helloworld/widgets/exemple_navigation/presentation_ecole_page.dart';
import 'package:helloworld/widgets/exemple_navigation/strasbourg_page.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PresentationPage(),),
                      );
                    }, 
                    child: const Text("Présentation de l'école")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const StrasbourgPage(),),
                      );
                    }, child: const Text("Découvrir Strasbourg")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PresentationPage(),),
                      );
                    }, child: const Text("Page de contact")),
                ),
              ],
            ),
          ),
        )
    );
  }
}
