
import 'package:go_router/go_router.dart';
import 'package:login_con_otra_pantalla/presentarions/home_screen.dart';
import 'package:login_con_otra_pantalla/presentarions/login_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (  context, state) => LoginScreen(),
  ),

  GoRoute(
    name: HomeScreen.name,
    path: '/home', 
    builder: (context, state) => HomeScreen(userName: state.extra as String)),
]);