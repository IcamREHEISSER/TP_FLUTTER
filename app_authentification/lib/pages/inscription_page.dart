import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'welcome_page.dart';

class InscriptionPage extends StatefulWidget {
  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _authentificationInstance = FirebaseAuth.instance;

  String _errorMessage = '';
  bool isProcessing = false;

  Future<void> _signUpWithEmailAndPassword() async {
    setState(() {
      isProcessing = true;
    });
    try {
      User? user = (await _authentificationInstance.createUserWithEmailAndPassword(
        email: _emailController.text, 
        password: _passwordController.text
      )).user;
      if (user != null) {   
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => WelcomePage()))
        );
      }
    } catch(error) {
      setState(() {
        isProcessing = false;
        _errorMessage = error.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inscription"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isProcessing ? Center(child: CircularProgressIndicator(),) :
        Column(
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
                onPressed: () {_signUpWithEmailAndPassword();}, 
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