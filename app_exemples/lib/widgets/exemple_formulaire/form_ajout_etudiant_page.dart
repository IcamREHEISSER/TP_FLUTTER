import 'package:flutter/material.dart';

import '../../model/genre_enum.dart';

class FormAjoutEtudiantPage extends StatefulWidget {
  const FormAjoutEtudiantPage({super.key});

  @override
  State<FormAjoutEtudiantPage> createState() => _FormAjoutEtudiantPageState();
}

class _FormAjoutEtudiantPageState extends State<FormAjoutEtudiantPage> {
  final _formKey = GlobalKey<FormState>();

  String? nouveauPrenom = "";

  String? nouveauNom = "";

  Genre selectedGenre = Genre.homme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
              key: _formKey,
              child: 
                Column(
                  children: [
                    const Text("Prenom :"),
                    TextFormField(  
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer une valeur !';
                        }
                        return null;
                      },
                      onSaved: (newValue) => nouveauPrenom = newValue,
                    ),
                    const Text("Nom :"),
                    TextFormField(  
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer une valeur !';
                        }
                        return null;
                      },
                      onSaved: (newValue) => nouveauNom = newValue,
                    ),
                    DropdownButton(
                      items: const [
                        DropdownMenuItem(value: "H", child: Text("Homme"),),
                        DropdownMenuItem(value: "F", child: Text("Femme"),),
                      ], 
                      onChanged: (value) {
                        value == "H" ? selectedGenre = Genre.homme : selectedGenre = Genre.femme;
                        
                      }
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {  
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.of(context).pop(Text("$nouveauNom $nouveauPrenom - $selectedGenre"));
                          }                  
                        },
                        child: const Text("Valider"),
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}