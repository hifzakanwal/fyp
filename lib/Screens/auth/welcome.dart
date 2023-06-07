import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Screens/auth/login.dart';
import 'package:flutter/material.dart';

import 'WhoYouAre.dart';

class Welcomce extends StatelessWidget {
  const Welcomce({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset("assets/Graphics/Welcome.png"),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              "Make Your Day",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Explore "),
                Text("Tailor and Purchase online",
                    style:
                        TextStyle(color: orange, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            MyCustomButton(
              fontColor: white,
              text: 'Sign Up',
              color: purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WhoYouAre()),
                );
              },
            ),
            SizedBox(
             height: size.height * 0.02,
            ),
            MyCustomButton(
                text: 'Login',
                color: purple,
                fontColor: white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
