import 'package:flutter/material.dart';

class CalculatriceCorrigePage extends StatelessWidget {
  const CalculatriceCorrigePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
          color: Colors.white24,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Icon(Icons.menu),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Standard", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Icon(Icons.expand),
                      )
                  ],),
                Icon(Icons.history)
                ],
              ),
              Expanded(
                flex: 2,
                child: Text("0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50), textAlign: TextAlign.end,)
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("MC"),
                    Text("MR"),
                    Text("M+"),
                    Text("M-"),
                    Text("MS"),
                    Text("Mv"),
                    ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(child: Center(child: Text("%")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("CE")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("C")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Icon(Icons.backspace)),)
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(child: Center(child: Text("1/x")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("x²")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("²Vx")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("/")),)
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("7")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("8")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("9")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("X")),)
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("4")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("5")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("6")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text("-")),)
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("1")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("2")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("3")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,child: Center(child: Text("+")),)
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(child: Center(child: Text("+/-")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Center(child: Text("0")),)
                    ),
                    Expanded(
                      child: Card(child: Center(child: Text(",")),)
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        child: Center(child: Text("=", style: TextStyle(color: Colors.white))),)
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}