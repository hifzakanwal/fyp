import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/tailors/tailor_card.dart';
import 'package:flutter/material.dart';

class TailorScreen extends StatefulWidget {
  const TailorScreen({super.key});

  @override
  State<TailorScreen> createState() => _TailorScreenState();
}

class _TailorScreenState extends State<TailorScreen> {
  final List<Color> predefinedColors = [
    red,
    skyBlue,
    darkPink,
    customPurple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Tailors",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4, // Number of cards
        itemBuilder: (BuildContext context, int index) {
          final color = predefinedColors[index % predefinedColors.length];
          return TailorCard(cardColor: color);
        },
      ),
    );
  }
}
