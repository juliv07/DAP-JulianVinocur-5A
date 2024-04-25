import 'package:go_router/go_router.dart';
import 'package:clase3'

final appRouter = GoRouter(
  initialLocation: '/login'
  routes: [
  GoRoute(
    path: '/login', 
    builder: (context, state) => LoginScreen())
]);