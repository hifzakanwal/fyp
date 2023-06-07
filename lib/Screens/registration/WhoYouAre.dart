import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Screens/registration/signup.dart';

import 'package:flutter/material.dart';

class WhoYouAre extends StatelessWidget {
  const WhoYouAre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  "Who you are!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/Graphics/signup.png"),
              SizedBox(
                height: 30,
              ),
              SizedBox(height: 60),
              MyCustomButton(
                  text: 'Join as a Customer',
                  color: purple,
                  fontColor: white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  }),
              SizedBox(
                height: 15,
              ),
              MyCustomButton(
                  text: 'Join as a Service Seller',
                  color: purple,
                  fontColor: white,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
