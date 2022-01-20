import 'package:flutter/material.dart';
import './pages/employees.dart';
import './pages/greet.dart';
import './pages/register.dart';
import './pages/verify.dart';
import './pages/login.dart';
import './pages/logo.dart';
import './pages/profile.dart';
import './theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: theme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LogoPage(),
        '/login': (context) => const LoginPage(),
        '/greet': (context) => const GreetPage(),
        '/verify': (context) => const VerifyPage(),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) => const ProfilePage(),
        '/employees': (context) => const EmployeesPage(),
      },
    );
  }
}
