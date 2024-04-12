import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController pswdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  icon: Icon(Icons.person)
                )
              ),
              TextField(
                controller: pswdController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock)
                ),
              )
              ElevatedButton(
                onPressed: (){
                if(userController.text=='julivino' && pswdController.text=='123456'){
                  print('Login Success');
                }
                if(userController.text==''){
                  print('User vacío.');
                }
                if(pswdController.text==''){
                  print('Contraseña vacía.');
                }
                else{
                  print('Login failed');
                }
              }, child: const Text('Login'),
              ),
            ],
          ),
        ),   
      ),
    );
  }
}
