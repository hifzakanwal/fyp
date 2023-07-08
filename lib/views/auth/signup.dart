import 'package:ect/constants/button.dart';
import 'package:ect/constants/colors.dart';
import 'package:ect/models/user.dart';
import 'package:ect/views/auth/welcome.dart';
import 'package:flutter/material.dart';

import '../../view_models/controllers/auth.dart';

class SignUp extends StatefulWidget {
  String? signUpType;
  SignUp({super.key, required this.signUpType});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _addressController = TextEditingController();
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(size.height * 0.02),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
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
              SizedBox(height: size.height * 0.07),
              Image.asset("assets/Graphics/signupi.png"),
              SizedBox(height: size.height * 0.07),
              Container(
                decoration: const BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a username";
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(height: size.height * 0.006),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter an email";
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(height: size.height * 0.006),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: _addressController,
                            decoration: const InputDecoration(
                              hintText: 'Address',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter an address";
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(height: size.height * 0.006),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a password";
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(height: size.height * 0.006),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Re-type Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please re-type your password";
                              } else if (_passwordController.text != value) {
                                return "Passwords do not match";
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const BottomText(),
                        SizedBox(height: size.height * 0.02),
                        isLoading
                            ? const CircularProgressIndicator(
                                color: pink,
                              )
                            : MyCustomButton(
                                text: 'Sign Up',
                                color: pink,
                                fontColor: white,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    register();
                                  }
                                }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                // Handle log in button click
                              },
                              child: const Text(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<UserModel> register() async {
    setState(() {
      isLoading = true;
    });
    try {
      UserModel userModel = await Auth().register(
          username: _usernameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          address: _addressController.text.trim(),
          userType: widget.signUpType!);
      if (userModel != null) {
        setState(() {
          isLoading = false;
        });
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Welcome()));
      } else {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Something went wrong!'),
          ),
        );
      }
    } on Exception catch (e) {
      print(e);
    }
    return UserModel();
  }
}

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
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
