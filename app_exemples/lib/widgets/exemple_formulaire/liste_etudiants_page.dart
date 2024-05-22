import 'package:flutter/material.dart';
import 'package:helloworld/widgets/exemple_formulaire/form_ajout_etudiant_page.dart';

import '../../model/genre_enum.dart';

class ListeEtudiantsPage extends StatefulWidget {
  const ListeEtudiantsPage({super.key});

  @override
  State<ListeEtudiantsPage> createState() => _ListeEtudiantsPageState();
}

class _ListeEtudiantsPageState extends State<ListeEtudiantsPage> {

  final List<Text> listeEtudiants = [
    const Text("Florent"),
    const Text("Yann"),
    const Text("Constyl"),
    const Text("Joseph"),
    const Text("Maiva"),
    const Text("Florian"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page de Formulaire"), backgroundColor: Colors.blue,),
      body: Center(child: Column(
        children: listeEtudiants,
        )
      ,),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          _versFormulaireAjoutEtudiant(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _versFormulaireAjoutEtudiant(BuildContext context) async {
    final textEtudiant = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => const FormAjoutEtudiantPage()),
    );
    listeEtudiants.add(textEtudiant);
    setState(() {});
  }
}


