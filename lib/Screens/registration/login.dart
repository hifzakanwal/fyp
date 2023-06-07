import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Constants/textfield.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 65),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Access your account",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 50),
            Image.asset("assets/Graphics/login.png"),
            SizedBox(height: 155),
            Container(
              decoration: BoxDecoration(
                color: purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    MyTextField(labelText: 'Name'),
                    SizedBox(height: 5),
                    MyTextField(labelText: 'Name'),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(height: 15),
                    MyCustomButton(
                        text: 'Login',
                        color: pink,
                        fontColor: white,
                        onPressed: () {}),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle log in button click
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: orange),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
