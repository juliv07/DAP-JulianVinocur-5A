import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 123, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Julián Vinocur",style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 2, 0, 134)),),
              Text("5LA",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),
        ),
      ),
    );
  }
}