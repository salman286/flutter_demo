import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({Key? key}) : super(key: key);

  replaceScreen(ctx) {
    Navigator.of(ctx).pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      replaceScreen(context);
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo-with-text.png',
        ),
      ),
    );
  }
}
