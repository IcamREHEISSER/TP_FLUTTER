import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counterValue = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counterValue = prefs.getInt('counter') ?? 0;
    });
  } 

  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counterValue = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counterValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mon compteur"), backgroundColor: Colors.blue,),
      body: Center(child: Text("$_counterValue", style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add)),
    );
  }
}