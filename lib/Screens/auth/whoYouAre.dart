import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Screens/auth/signup.dart';

import 'package:flutter/material.dart';

class WhoYouAre extends StatelessWidget {
  const WhoYouAre({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
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
                  "Who you are!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
               height: size.height * 0.05,
              ),
              Image.asset("assets/Graphics/signup.png"),
              SizedBox(
                height: size.height * 0.1,
              ),
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
               height: size.height * 0.02,
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
