import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Constants/textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all( size.height * 0.02),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.6,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Access your account",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.075,
                    ),
                    Image.asset("assets/Graphics/login.png"),
                    SizedBox(
                      height: size.height * 0.075,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.32,
                decoration: BoxDecoration(
                  color: purple,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      MyTextField(labelText: 'Name'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      MyTextField(labelText: 'Name'),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      MyCustomButton(
                          text: 'Login',
                          color: pink,
                          fontColor: white,
                          onPressed: () {}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
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
      ),
    );
  }
}
