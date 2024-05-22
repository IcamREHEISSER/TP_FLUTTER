import 'package:flutter/material.dart';

import '../../model/genre_enum.dart';

class CarteContact extends StatelessWidget {
  const CarteContact({super.key, required this.nom, required this.prenom, required this.numeroTelephone, required this.adresse, required this.genre});

  final String nom;
  final String prenom;
  final String numeroTelephone;
  final String adresse;
  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$nom $prenom", style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text(numeroTelephone),
                Text(adresse),
              ],
            ),
            genre == Genre.homme ? Image.asset("man1.png", width: 40, height: 40,) : Image.asset("woman1.png", width: 40, height: 40,)
          ],
        ),
      ),
    );
  }  
}