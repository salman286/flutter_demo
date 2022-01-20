import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/general/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(27, 50, 27, 20),
              padding: const EdgeInsets.fromLTRB(38, 38, 38, 65),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Please login to your account.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      labelText: "Mobile Number",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Button(
                    label: "Login",
                    backgroundColor: const Color(0xFF232323),
                    textStyle: const TextStyle(
                      fontSize: 17,
                    ),
                    onPress: () {
                      Navigator.of(context).pushNamed('/verify');
                    },
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Do not have an account? ",
                    style: TextStyle(
                      color: Color(0xFF006629),
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: "Register now",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushReplacementNamed('/register');
                      },
                    style: const TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
