import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final String userName;
  HomeScreen({super.key, this.userName = ''});

  @override
  Widget build(BuildContext context) {
    List users = ['julivino', 'pirulo123', 'fulano456'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome $userName',
          style: const TextStyle(color: Color.fromARGB(255, 228, 118, 0)),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(users[index]),
              subtitle: Text('Usuario ${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
