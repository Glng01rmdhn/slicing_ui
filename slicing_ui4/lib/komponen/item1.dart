import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  final String text;
  final IconData icon;
  const Item1({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 40),
        ),
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
