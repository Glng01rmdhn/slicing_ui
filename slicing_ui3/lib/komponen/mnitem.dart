import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/mnkereta.dart';

class Mnitem extends StatelessWidget {
  const Mnitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mnkereta(
            text: "hotel",
            icon: Icon(Icons.hotel),
            warna: Colors.pink.withOpacity(0.7),
          ),
          Mnkereta(
            text: "Logistik",
            icon: Icon(Icons.gif_outlined),
            warna: Colors.pink.withOpacity(0.7),
          ),
          Mnkereta(
            text: "kartu",
            icon: Icon(Icons.credit_card),
            warna: Colors.pink.withOpacity(0.7),
          ),
          Mnkereta(
            text: "lainnya",
            icon: Icon(Icons.more_horiz),
            warna: Colors.pink.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
