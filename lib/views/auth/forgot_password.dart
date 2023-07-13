import 'package:ect/Constants/colors.dart';
import 'package:ect/constants/button.dart';
import 'package:ect/views/auth/login.dart';
import 'package:ect/widgets/snackbar.dart';
import 'package:flutter/material.dart';

import '../../view_models/controllers/auth.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(size.height * 0.02),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.65,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Reset your password",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.075,
                      ),
                      Image.asset("assets/Graphics/forgot_password.png"),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.3,
                  decoration: const BoxDecoration(
                    color: customPurple,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: email,
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(16.0),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  showSnackBar(
                                      context, "Please enter your Email");
                                  return null;
                                }
                                // You can add more validation logic here if needed
                                return null;
                              },
                              // You can add more properties and callbacks as needed
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          MyCustomButton(
                            text: 'Reset Password',
                            color: red,
                            fontColor: customWhite,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Auth.instance.forgotPassword(
                                  email.text.toString(),
                                  context,
                                );
                              }
                            },
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              'Back to login?',
                              style: TextStyle(color: customOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
