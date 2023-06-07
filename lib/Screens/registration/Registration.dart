import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Screens/registration/login.dart';
import 'package:flutter/material.dart';

import 'WhoYouAre.dart';

class Welcomce extends StatelessWidget {
  const Welcomce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/Graphics/Welcome.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Make Your Day",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Explore "),
                Text("Tailor and Purchase online",
                    style:
                        TextStyle(color: orange, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 60),
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
              height: 15,
            ),
            MyCustomButton(
                text: 'Login',
                color: purple,
                fontColor: white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
