import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/measurements/ai_measurement.dart';
import 'package:ect/views/customer_home/homepage_categories/measurements/manual_measuremnets.dart';
import 'package:flutter/material.dart';

class MeasurementScreen extends StatefulWidget {
  const MeasurementScreen({super.key});

  @override
  State<MeasurementScreen> createState() => _MeasurementScreenState();
}

class _MeasurementScreenState extends State<MeasurementScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: customPurple,
          title: const Text(
            "Measurements",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 33.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text(
                  "Select the way you want to add your measurements",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
                child: SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                "assets/Graphics/manual_measurements.png",
                                width: 32,
                                height: 32,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Manual Measurements",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Insert your measurements \nmanually",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ManualMeasurements(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 10.0,
                          endIndent: 10.0,
                          thickness: 1,
                          color: customOrange,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                "assets/Graphics/manual_measurements.png",
                                width: 32,
                                height: 32,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Measurements through AI",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Take you automated \nmeasurement through camera",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AIMeasurement(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 10.0,
                          endIndent: 10.0,
                          thickness: 1,
                          color: customOrange,
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
}
