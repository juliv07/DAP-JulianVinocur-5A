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

class _LoginView extends StatelessWidget{
  TextEditingController userController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  
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
                      )
                  )
                ),
                TextField(
                  obscureText: true,
                  controller: pswdController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    icon: Icon(
                      Icons.lock_outline_rounded, 
                      color: Color.fromARGB(255, 255, 0, 0),
                    )
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                  if(userController.text=='julivino' && pswdController.text=='holaa'){
                    print('Login Success');
            
                    context.pushNamed(HomeScreen.name, extra: userController.text);
                  }
                  if(userController.text=='' || pswdController.text==''){
                    print('Complete todos los campos.');
                    return;
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
