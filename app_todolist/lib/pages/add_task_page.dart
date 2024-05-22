import 'package:flutter/material.dart';

import '../model/task.dart';

class AddTaskPage extends StatefulWidget {

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final _keyForm = GlobalKey<FormState>();

  String newValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ma TODO List"), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Ajouter une tache", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Form(
              key: _keyForm,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez entrer une valeur";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      newValue = value ?? "";
                    }
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_keyForm.currentState!.validate()) {
                          _keyForm.currentState!.save();
                          Task newTask = Task(texte: newValue, dateAjout: DateTime.now(), status: false);
                          Navigator.of(context).pop(newTask);
                        }
                      } ,
                      child: Text("Ajouter la valeur"),
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}