import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/clothes/clothes_card.dart';
import 'package:flutter/material.dart';

class ClothesScreen extends StatefulWidget {
  const ClothesScreen({super.key});

  @override
  State<ClothesScreen> createState() => _ClothesScreenState();
}

class _ClothesScreenState extends State<ClothesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Clothes",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: List.generate(
            4,  // Number of cards
            (index) => const ClothesCard(),
          ),
        ),
      ),
    );
  }
}
