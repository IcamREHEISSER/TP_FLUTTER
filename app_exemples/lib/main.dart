import 'package:flutter/material.dart';
import 'package:helloworld/widgets/test_firestore/todo_list_page.dart';

void main() async {
  /* await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); */
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ToDoListPage(),
    );
  }

  
}
