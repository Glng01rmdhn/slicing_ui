import 'package:flutter/material.dart';
import 'package:slicing_ui4/komponen%20promo/category.dart';
import 'package:slicing_ui4/komponen%20promo/promo1.dart';
import 'package:slicing_ui4/komponen%20promo/promo2.dart';
import 'package:slicing_ui4/komponen%20promo/promo3.dart';
import 'package:slicing_ui4/komponen/card2.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Promo1(
                        icon: Icons.star,
                        text: "15 Vouchers",
                        subtitle: "Pakai yuk!",
                      ),
                      Promo1(
                        icon: Icons.star_border,
                        text: "Vouchers Plus",
                        subtitle: "Langganan Sekarang!",
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 20),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Masukkan kode voucher",
                            style: TextStyle(color: Colors.lightGreen[600]),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 0.3),
            Container(margin: EdgeInsets.all(20), child: Promo2()),

            SizedBox(height: 10),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                Category(text: "11.11"),
                Category(text: "gajian"),
                Category(text: "riding"),
                Category(text: "food"),
                Category(text: "travel"),
                Category(text: "vacation"),
                Category(text: "hotel"),
                Category(text: "drinks"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Super deal hari ini!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card2(
                    text1: "Diskon ongkir",
                    text2: "Sampai 50%",
                    text3: "Khusus grab & shoope",
                    warna: Colors.lightBlueAccent,
                  ),
                  Card2(
                    text1: "Buy 1 get 1",
                    text2: "Cemilan kekinian",
                    text3: "*syarat dan ketentuan berlaku",
                    warna: Colors.orangeAccent,
                  ),
                  Card2(
                    text1: "Bonus cashback",
                    text2: "Rp. 10.000",
                    text3: "untuk pengguna baru",
                    warna: Colors.pinkAccent,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Promo makanan!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Promo3(text: "HABVJAB")
          ],
        ),
      ),
    );
  }
}
