import 'package:login_con_otra_pantalla/presentarions/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/login'
  routes: [
  GoRoute(
    path: '/login', 
    builder: (context, state) => LoginScreen())
]);