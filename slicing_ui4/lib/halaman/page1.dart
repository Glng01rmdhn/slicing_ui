import 'package:flutter/material.dart';
import 'package:slicing_ui4/komponen/card1.dart';
import 'package:slicing_ui4/komponen/card2.dart';
import 'package:slicing_ui4/komponen/card3.dart';
import 'package:slicing_ui4/komponen/card4.dart';
import 'package:slicing_ui4/komponen/card5.dart';
import 'package:slicing_ui4/komponen/item1.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ini bagian app bar atas tapi kgk pake appbar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  Row(
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.black),
                      SizedBox(width: 12),
                      Icon(Icons.notifications, color: Colors.black),
                      SizedBox(width: 12),
                      Icon(Icons.settings, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
            //bagian item dan duit
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Baris ikon menu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card1(icon: Icons.local_cafe, label: "Minuman"),
                      Card1(icon: Icons.restaurant, label: "Makanan"),
                      Card1(icon: Icons.fastfood, label: "Fast Food"),
                      Card1(icon: Icons.store, label: "Toko"),
                      Card1(icon: Icons.shopping_bag, label: "Belanja"),
                    ],
                  ),
                  Divider(color: Colors.black),
                  SizedBox(height: 5),
                  // Saldo dan coin
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Image.asset('assets/KAUPAYS.png'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 500.000",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("0 Coins", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // bagian item item bulet
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item1(icon: Icons.airplanemode_active, text: "Transfer"),
                Item1(icon: Icons.wallet_outlined, text: "Top Up"),
                Item1(icon: Icons.card_giftcard_outlined, text: "Tarik Tunai"),
                Item1(icon: Icons.money, text: "Konfersi"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Item1(icon: Icons.wifi, text: "Kuota"),
                Item1(icon: Icons.signal_cellular_alt, text: "Pulsa"),
                Item1(icon: Icons.shopping_cart, text: "Ecommerce"),
                Item1(icon: Icons.savings_outlined, text: "Nabung"),
              ],
            ),

            //card super deal
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "Super deal hari ini!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                "banner",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [Card3()]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "jangan lewatkan!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text("belanja anda untung kami, mwheheh"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [Card4()]),
            ),
            Card5(),
          ],
        ),
      ),
    );
  }
}
