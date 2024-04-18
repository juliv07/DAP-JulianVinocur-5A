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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bienvenidos', style: TextStyle(fontSize: 48),
              ),
              SizedBox(height: 20,),
              Text('Hello World', style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Usuario: ',style: TextStyle(color: Color.fromARGB(255, 26, 63, 198)),),
                  Text('Julian')],)
            ],),
        )
      ),
    );
  }
}
