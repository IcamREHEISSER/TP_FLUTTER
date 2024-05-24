import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/pages/todo_list_page.dart';

import 'inscription_page.dart';


class AuthentificationPage extends StatefulWidget {
  @override
  State<AuthentificationPage> createState() => _AuthentificationPageState();
}

class _AuthentificationPageState extends State<AuthentificationPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _authentificationInstance = FirebaseAuth.instance;

  String _errorMessage = '';

  Future<void> _signInWithEmailAndPassword() async {
    try {
      final User? user = (await _authentificationInstance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text
        )).user;
      if(user != null) {
        String uid = user.uid; 
        Navigator.of(context).push(
          MaterialPageRoute(builder: ((context) => ToDoListPage()))
        );
      }    
    } catch(error) {
      setState(() {
          _errorMessage = error.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Authentification"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Mot de passe'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {_signInWithEmailAndPassword();}, 
                child: Text("Se connecter")
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => InscriptionPage()))
                  );
                }, 
                child: Text("S'inscrire")
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(_errorMessage, style: TextStyle(color: Colors.red))
            ),
          ],
        ),
      ),
    );
  }
}