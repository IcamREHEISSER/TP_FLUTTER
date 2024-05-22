import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterCorrigePage extends StatefulWidget {
  const CounterCorrigePage({super.key});

  @override
  State<CounterCorrigePage> createState() => _CounterCorrigePageState();
}

class _CounterCorrigePageState extends State<CounterCorrigePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt('counter') ?? 0;
    });
  } 

  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mon compteur"), backgroundColor: Colors.blue,),
      body: Center(child: Text("$_counter", style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _incrementCounter),
    );
  }
}