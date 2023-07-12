import "package:flutter/material.dart";

import "../../../view_models/controllers/auth.dart";
import "../../auth/login.dart";

class SellerHome extends StatelessWidget {
  const SellerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await Auth().logout(context);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Text("Seller Home"),
        ),
      ),
    );
  }
}
