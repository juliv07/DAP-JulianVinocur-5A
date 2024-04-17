import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final TextEditingController userController = TextEditingController();
  final TextEditingController pswdController = TextEditingController();

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
              ),
              ElevatedButton(
                onPressed: (){
                if(userController.text=='julivino' && pswdController.text=='holaa'){
                  print('Login Success');
                }
                if(userController.text==''){
                  print('User vacío.');
                }
                if(pswdController.text==''){
                  print('Contraseña vacía.');
                }
                if(userController.text=='julivino' && pswdController.text!='holaa'){
                  print('Contraseña incorrecta');
                }
                if(userController.text!='julivino' && pswdController.text=='holaa'){
                  print('Usuario incorrecto');
                }
                if(userController.text!='julivino' && pswdController.text!='holaa'){
                  print('Contraseña y usuario incorrectos');
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
