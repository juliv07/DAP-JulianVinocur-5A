import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final String userName;
  HomeScreen({super.key, this.userName = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome $userName',
          style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 228, 118, 0))
          ),
        ),
    );
  }
}