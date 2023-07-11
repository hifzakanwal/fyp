import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class AllTabScreen extends StatefulWidget {
  const AllTabScreen({super.key});

  @override
  State<AllTabScreen> createState() => _AllTabScreenState();
}

class _AllTabScreenState extends State<AllTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Graphics/orders.png",
              width: 120,
              height: 120,
            ),
            const Text(
              "No Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "You haven’t other any thing yet. Explore and order something",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(iconColor)),
              child: const Text(
                "Explore",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
