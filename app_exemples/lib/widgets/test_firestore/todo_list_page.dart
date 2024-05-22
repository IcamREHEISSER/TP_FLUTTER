import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class ToDoListPage extends StatefulWidget{
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseFirestore database = FirebaseFirestore.instance;

  List<Text> mesTextes = [];
  String texteAAjouter = "";  

  @override
  void initState() {
    _loadText();
    super.initState();
  }
  
  void _addNewText() async {
    print("OK");
    print("OK2");
    database.collection("textes").add({"texte" : texteAAjouter}).then((doc) =>(print("OK4")));
    print("OK3");
    texteAAjouter = "";
    await _loadText();
  }

  Future<void> _loadText() async {
    database.collection("textes").get().then(
    (querySnapshot) {
      print("Successfully completed");
      for (var docSnapshot in querySnapshot.docs) {
        mesTextes.add(Text(docSnapshot.data()["name"] ?? "null"));
        print('${docSnapshot.id} => ${docSnapshot.data()}');
      }
      
      setState(() {});
    },
    onError: (e) => print("Error completing: $e"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ToDo Liste"), backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: mesTextes,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        texteAAjouter = value!;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            _addNewText();
                          }
                        },
                        child: const Text('Valider'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}