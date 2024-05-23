import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_con_otra_pantalla/presentarions/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  List users = ['julivino', 'pirulo123', 'fulano456'];
  List passwords = ['holaa', '123456789', 'qwertyuiop'];

  int indiceUser = 0;

  _LoginView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                      hintText: 'Username',
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 50, 143, 255),
                      ))),
              TextField(
                obscureText: true,
                controller: pswdController,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Color.fromARGB(255, 255, 0, 0),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  String inputUser = userController.text;
                  String inputPswd = pswdController.text;

                  if (inputUser.isEmpty || inputPswd.isEmpty) {
                    SnackBar emptyFields = SnackBar(
                      content: const Text('Complete todos los campos.',
                          style: TextStyle(color: Colors.black)),
                      backgroundColor: Color.fromARGB(181, 24, 241, 107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: const Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(emptyFields);
                    return;
                  }

                  if (users.contains(inputUser) == false) {
                    //print('Usuario no encontrado.');
                    SnackBar userNotFound = SnackBar(
                      content: const Text(
                          'Usuario no encontrado. Intente de nuevo.',
                          style: TextStyle(color: Colors.black)),
                      backgroundColor: Color.fromARGB(195, 251, 255, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: const Duration(seconds: 2),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(userNotFound);
                    return;
                  } else {
                    indiceUser = users.indexOf(inputUser);

                    if (inputPswd == passwords[indiceUser]) {
                      context.pushNamed(HomeScreen.name,
                          extra: userController.text);
                    } else {
                      SnackBar incorrectPswd = SnackBar(
                        content: const Text('Contraseña incorrecta.',
                            style: TextStyle(color: Colors.white)),
                        backgroundColor: Color.fromARGB(204, 255, 40, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: const Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(incorrectPswd);
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
