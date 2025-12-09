import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_5/decoration/set.dart';

class Flashsale extends StatelessWidget {
  const Flashsale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: ClassName.color3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flash Sale",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                KontenFL(
                  image: "assets/coklat.jpg",
                  title: "feastables",
                  desc1: "coklat enak yang sedang di cari",
                  desc2: "Varian Dark choco",
                  price: "150.000,-",
                  status: "Product online",
                ),
                KontenFL(
                  image: "assets/coklat.jpg",
                  title: "feastables",
                  desc1: "coklat enak yang sedang di cari",
                  desc2: "Varian Dark choco",
                  price: "150.000,-",
                  status: "Ready stock",
                ),
                KontenFL(
                  image: "assets/coklat.jpg",
                  title: "feastables",
                  desc1: "coklat enak yang sedang di cari",
                  desc2: "Varian Dark choco",
                  price: "107.000,-",
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
          // Gambar
          SizedBox(
            width: double.infinity,
            child: Image.asset(image),
          ),

          // Bar judul
          Container(
            height: 10,
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color3,
                ),
              ),
            ),
          ),

          // Desc
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

          // Harga
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              price,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Status
          Text(
            status,
            style: GoogleFonts.openSans(fontSize: 10),
          ),
        ],
      ),
    );
  }
}