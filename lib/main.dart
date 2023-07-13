import 'package:ect/Constants/colors.dart';
import 'package:ect/models/user.dart';
import 'package:ect/view_models/controllers/auth.dart';
import 'package:ect/views/customer_home/nav_home/bottom_nav_bar.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_home_screen/seller_bottom_bar.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_home_screen/seller_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'views/auth/welcome.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? finalKey;
  UserModel? userModel;

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  Future<void> getUserInfo() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      UserModel user = await Auth.instance.getUserData(uid);
      setState(() {
        userModel = user;
        debugPrint(userModel?.userType);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              if (userModel != null) {
                if (userModel?.userType == "customer") {
                  debugPrint("Customer");
                  return const CustomerBottomNavBar();
                } else if (userModel?.userType == "seller") {
                  debugPrint("Seller");
                  return const SellerBottomNavBar();
                } else if (userModel?.userType == null) {
                  return const Welcome();
                } else if (snapshot.hasError) {
                  return Text(
                    '${snapshot.hasError}',
                  );
                }
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: customPurple,
                ),
              );
            }
          }
          return const Welcome();
        },
      ),
    );
  }
}
