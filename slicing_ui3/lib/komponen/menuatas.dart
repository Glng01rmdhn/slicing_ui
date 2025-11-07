import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/buttonmn.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat pagi",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                "Galang Ramadhan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(spacing: 8, children: [Buttonmn(), Buttonmn(), Buttonmn()]),
        ],
      ),
    );
  }
}
