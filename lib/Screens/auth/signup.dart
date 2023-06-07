import 'package:ect/Constants/button.dart';
import 'package:ect/Constants/colors.dart';
import 'package:ect/Constants/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(size.height * 0.02),
        child: SafeArea(
          child: Column(
            children: [
               SizedBox(height: size.height*0.02),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create your account",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: size.height*0.07),
              Image.asset("assets/Graphics/signupi.png"),
              SizedBox(height: size.height*0.07),
              Container(
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
                    children: [
                      MyTextField(labelText: 'Name'),
                      SizedBox(height: size.height*0.006),
                      MyTextField(labelText: 'Name'),
                      SizedBox(height: size.height*0.006),
                      MyTextField(labelText: 'Name'),
                       SizedBox(height: size.height*0.006),
                      MyTextField(labelText: 'Name'),
                       SizedBox(height: size.height*0.006),
                      MyTextField(labelText: 'Name'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      bottomText(),
                      SizedBox(height: size.height*0.02),
                      MyCustomButton(
                          text: 'Sign Up',
                          color: pink,
                          fontColor: white,
                          onPressed: () {}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle log in button click
                            },
                            child: Text(
                              'Log in',
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

class bottomText extends StatelessWidget {
  const bottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Text.rich(
        TextSpan(
          text: 'By signing up, you accept the ',
          children: [
            TextSpan(
              text: 'Term of services',
              style: TextStyle(color: orange),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Privacy policies',
              style: TextStyle(color: orange),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
