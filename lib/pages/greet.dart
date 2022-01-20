import 'package:flutter/material.dart';

class GreetPage extends StatelessWidget {
  const GreetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 194),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Hello, Hassan",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Color(0xFF232323),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              "You are",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 118,
            ),
            SizedBox(
              width: 313,
              height: 72,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF232323),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/profile');
                },
                child: Text(
                  "employee".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: 313,
              height: 72,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/employees');
                },
                child: Text(
                  "employer".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
