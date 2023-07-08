import 'package:ect/constants/button.dart';
import 'package:ect/constants/colors.dart';
import 'package:ect/models/user.dart';
import 'package:ect/view_models/controllers/auth.dart';
import 'package:ect/views/auth/who_are_you.dart';
import 'package:ect/views/customer_home/nav_home/home.dart';
import 'package:ect/views/service_seller_home/nav_home/home.dart';
import 'package:ect/widgets/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(size.height * 0.02),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.57,
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
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.35,
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
                          height: size.height * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                showSnackBar(
                                    context, "Please enter your Password");
                                return null;
                              }
                              // You can add more validation logic here if needed
                              return null;
                            },
                            // You can add more properties and callbacks as needed
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const ForgotPassword()));
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        MyCustomButton(
                            text: 'Login',
                            color: pink,
                            fontColor: white,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _login();
                              }
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WhoYouAre()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _login() async {
    try {
      // Future<String> res =
      //     Auth().login(email.text.trim(), password.text.trim());
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim());
      User? user = userCredential.user;

      if (user != null) {
        print(
            "user is not null-----------------------------------------------");
        UserModel userModelData = await Auth().getUserData(user.uid);
        if (userModelData.userType == "seller") {
          print(userModelData.userType.toString().toUpperCase());
          //navigato to seller screen
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SellerHome()));
        } else if (userModelData.userType == "customer") {
          print(userModelData.userType.toString().toUpperCase());
          //navigato to customer screen
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CustomerHome()));
        }
      } else {
        showSnackBar(context, "something went wrong");
      }
    } catch (e) {
      showSnackBar(context, "something went wrong");
    }
  }
}
