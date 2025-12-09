import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Isi extends StatelessWidget {
  const Isi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),

      // ❌ Jangan pakai width: double.infinity
      // Karena akan mengunci lebar sehingga scroll tidak jalan
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),

          // Scroll Horizontal
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                KontenFL(
                  image: "assets/beringin.jpg",
                  title: "pohon beringin",
                  desc1: "pohon beringin berudara sejuk dan pembawa berkah",
                  desc2: "bibit saja",
                  price: "342.000,-",
                  status: "Product online",
                ),
                KontenFL(
                  image: "assets/beringin.jpg",
                  title: "pohon beringin",
                  desc1: "pohon beringin berudara sejuk dan pembawa berkah",
                  desc2: "bibit saja",
                  price: "342.000,-",
                  status: "Ready stock",
                ),
                KontenFL(
                  image: "assets/beringin.jpg",
                  title: "pohon beringin",
                  desc1: "pohon beringin berudara sejuk dan pembawa berkah",
                  desc2: "bibit saja",
                  price: "342.000,-",
                  status: "Product online",
                ),

                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class KontenFL extends StatelessWidget {
  final String image;
  final String title;
  final String desc1;
  final String desc2;
  final String price;
  final String status;

  const KontenFL({
    super.key,
    required this.image,
    required this.title,
    required this.desc1,
    required this.desc2,
    required this.price,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(image),
          ),

          Container(
            height: 10,
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),

          Text(
            desc1,
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            desc2,
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w800,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              price,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            status,
            style: GoogleFonts.openSans(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
