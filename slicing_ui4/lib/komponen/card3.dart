import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 19,
          children: [
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/banner-7.png'),
                fit: BoxFit.cover)
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/banner-8.png'),
                fit: BoxFit.cover)
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/banner-9.png'),
                fit: BoxFit.cover)
              ),
            ),
          ],
        ),
      ),
    );

  }
}