import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color fontColor; // Add the font color parameter

  const MyCustomButton({
    required this.text,
    required this.onPressed,
    required this.color,
    required this.fontColor, // Include the font color parameter in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, color: fontColor), // Use the provided font color
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color,
        minimumSize: Size(306, 50),
      ),
    );
  }
}
