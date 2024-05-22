import 'package:flutter/material.dart';

class ExerciceCalculatricePage extends StatelessWidget {
  const ExerciceCalculatricePage({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(

      body: Container(
        color: Colors.white70,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.menu),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Standard", style: TextStyle(fontSize: 30),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.visibility),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.history),
              ),
            ],),
          ),
          Expanded(child: Text("0", style: TextStyle(fontSize: 40), textAlign: TextAlign.right,)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("MC"),
              Text("MR"),
              Text("M+"),
              Text("M-"),
              Text("MS"),
              Text("Mv"),
            ],),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(child: Card(child: Center(child: Text("%")),)),
              Expanded(child:Card(child: Center(child: Text("CE")),)),
              Expanded(child:Card(child: Center(child: Text("C")),)),
              Expanded(child:Card(child: Center(child: Icon(Icons.backspace)),)),
            ],),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(child: Card(child: Center(child: Text("1/x")),)),
              Expanded(child:Card(child: Center(child: Text("x²")),)),
              Expanded(child:Card(child: Center(child: Text("²Vx")),)),
              Expanded(child:Card(child: Center(child: Text("/")),)),
            ],),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(child: Card(child: Center(child: Text("7")),)),
              Expanded(child:Card(child: Center(child: Text("8")),)),
              Expanded(child:Card(child: Center(child: Text("9")),)),
              Expanded(child:Card(child: Center(child: Text("X")),)),
            ],),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(child: Card(child: Center(child: Text("4")),)),
              Expanded(child:Card(child: Center(child: Text("5")),)),
              Expanded(child:Card(child: Center(child: Text("6")),)),
              Expanded(child:Card(child: Center(child: Text("-")),)),
            ],),
          ),
          Expanded(
            flex: 1,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Expanded(child: Card(child: Center(child: Text("1")),)),
            Expanded(child:Card(child: Center(child: Text("2")),)),
            Expanded(child:Card(child: Center(child: Text("3")),)),
            Expanded(child:Card(child: Center(child: Text("+")),)),
            ],),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(child: Card(child: Center(child: Text("+/-")),)),
              Expanded(child:Card(child: Center(child: Text("0")),)),
              Expanded(child:Card(child: Center(child: Text(",")),)),
              Expanded(child:Card(child: Center(child: Text("=")),)),
            ],),),
        ],),
      ),
    ));
  }
}