import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/measurements/your_measurement.dart';
import 'package:flutter/material.dart';

class AIMeasurement extends StatefulWidget {
  const AIMeasurement({super.key});

  @override
  State<AIMeasurement> createState() => _AIMeasurementState();
}

class _AIMeasurementState extends State<AIMeasurement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Set your Position",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          children: [
            Image.asset(
              "assets/Graphics/ai_measurement.png",
              width: 313,
              height: 503,
            ),
            const Text(
              "Place your device against the wall, your body must fit into the frame",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YourMeasurements(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "NEXT ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5E4AD1),
                    ),
                  ),
                  Icon(
                    Icons.double_arrow,
                    color: Color(0xffFEB448),
                    grade: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
