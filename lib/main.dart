import 'package:flutter/material.dart';
import 'package:ticket_app/gradientcolor.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(Colors.yellow, Colors.red),
      ),
    ),
  );
}