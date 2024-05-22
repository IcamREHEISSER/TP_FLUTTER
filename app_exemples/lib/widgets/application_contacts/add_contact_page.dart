import 'package:flutter/material.dart';

import '../../model/contact.dart';
import 'carte_contact.dart';
import '../../model/genre_enum.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {

  final _formKey = GlobalKey<FormState>();

  String _nom = "";
  String _prenom = "";
  String _numeroTelephone = "";
  String _adresse = "";
  Genre _selectedGenre = Genre.homme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mes contacts"),backgroundColor: Colors.blue,),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text("Nom : "),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom';
                }
                return null;
              },
              onSaved: (value) {
                _nom = value!;
              },
            ),
            const Text("Prénom : "),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom';
                }
                return null;
              },
              onSaved: (value) {
                _prenom = value!;
              },
            ),
            const Text("Numéro de téléphone : "),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom';
                }
                return null;
              },
              onSaved: (value) {
                _numeroTelephone = value!;
              },
            ),
            const Text("Adresse : "),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom';
                }
                return null;
              },
              onSaved: (value) {
                _adresse = value!;
              },
            ),
            DropdownButton(
              items: const [
                DropdownMenuItem(value: "H", child: Text("Homme"),),
                DropdownMenuItem(value: "F", child: Text("Femme"),),
              ], 
              onChanged: (value) {
                value == "H" ? _selectedGenre = Genre.homme : _selectedGenre = Genre.femme;
              }),
            ElevatedButton(
              onPressed: ()  {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.of(context).pop(Contact(
                      name: _nom,
                      firstName: _prenom,
                      phoneNumber: _numeroTelephone,
                      adress: _adresse,
                      gender: _selectedGenre
                    )
                  );
                }
              }, 
              child: const Text("Ajouter le contact")
            )
          ],
        ),
      )
    );
  }
}


