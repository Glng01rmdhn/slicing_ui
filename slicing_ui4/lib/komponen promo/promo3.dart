import 'package:flutter/material.dart';

class Promo3 extends StatelessWidget {
  final String text;
  const Promo3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          spacing: 19,
          children: [
            Container(
              height: 200,
              width: 470,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}