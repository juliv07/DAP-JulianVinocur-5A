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
        backgroundColor: Color.fromARGB(255, 140, 138, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nosotras somos",style: TextStyle(fontSize: 40, color: Colors.white),),
              Text("Sofi y Eli :)",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 169, 3, 78)),)
            ],
          ),
        ),
      ),
    );
  }
}
//TextStyle(fontSize: 30),selectionColor: Color.fromARGB(255, 27, 27, 215),),              