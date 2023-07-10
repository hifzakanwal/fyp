import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/fabric_collection/fabric_widget.dart';
import 'package:flutter/material.dart';

class FabricCollectionScreen extends StatefulWidget {
  const FabricCollectionScreen({super.key});

  @override
  State<FabricCollectionScreen> createState() => _FabricCollectionScreenState();
}

class _FabricCollectionScreenState extends State<FabricCollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Fabric Collection",
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
            42,  // Number of cards
            (index) => const FabricItemWidget(),
          ),
        ),
      ),
    );
  }
}
