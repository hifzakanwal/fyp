import "package:ect/view_models/controllers/auth.dart";
import "package:ect/views/auth/login.dart";
import "package:flutter/material.dart";

class CustomerHome extends StatelessWidget {
  const CustomerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await Auth().logout();
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Text("Customer Home"),
        ),
      ),
    );
  }
}
