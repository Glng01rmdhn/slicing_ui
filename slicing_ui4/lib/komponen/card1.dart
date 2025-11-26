import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final IconData icon;
  final String label;
  const Card1({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 42),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}