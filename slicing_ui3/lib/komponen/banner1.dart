import 'package:flutter/material.dart';

class banner1 extends StatelessWidget {
  const banner1({super.key});

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
                image: DecorationImage(image: AssetImage('assets/banner-1.png'),
                fit: BoxFit.cover)
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/banner-2.png'),
                fit: BoxFit.cover)
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/banner-3.png'),
                fit: BoxFit.cover)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
