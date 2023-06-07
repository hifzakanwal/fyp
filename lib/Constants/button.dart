import 'package:flutter/material.dart';

import 'colors.dart';
class MyCustomButton extends StatelessWidget {
    final String text;
  final VoidCallback onPressed;

  const MyCustomButton({ required this.text,
    required this.onPressed,super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
    text,
    style: TextStyle(fontSize: 16), // Set the desired font size
  ),
      
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Set the desired border radius for round corners
    ),
        backgroundColor: purple, minimumSize: Size(306, 50),
        // Customize the button background color here
      ),
    );
  }
}


