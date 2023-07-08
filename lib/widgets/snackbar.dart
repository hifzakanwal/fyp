import 'package:ect/constants/colors.dart';
import 'package:flutter/material.dart';

showSnackBar(
  BuildContext context,
  String content,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: purple,
      content: Text(
        content,
        style: const TextStyle(color: white, fontWeight: FontWeight.bold),
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}
