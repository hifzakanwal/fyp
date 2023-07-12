import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class SearchTailorScreen extends StatefulWidget {
  const SearchTailorScreen({super.key});

  @override
  State<SearchTailorScreen> createState() => _SearchTailorScreenState();
}

class _SearchTailorScreenState extends State<SearchTailorScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enable location to see Nearest Tailors",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 120.0,
              child: ElevatedButton(
                onPressed: () {},
                style:  ElevatedButton.styleFrom(
                  backgroundColor: customOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  )
                ),
                child: const Text(
                  "Enable",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
