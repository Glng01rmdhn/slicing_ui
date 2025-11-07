import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/banner1.dart';
import 'package:slicing_ui3/komponen/kartukai.dart';
import 'package:slicing_ui3/komponen/menuatas.dart';
import 'package:slicing_ui3/komponen/mnitem.dart';
import 'package:slicing_ui3/komponen/mnkereta.dart';
import 'package:slicing_ui3/komponen/trip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    image: DecorationImage(
                      image: AssetImage('assets/stasiun1.jpeg'),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1),
                        BlendMode.darken,
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.3,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Menuatas(),
                  ),
                ),
                kartukai(),
              ],
            ),
            SizedBox(height: 115),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Mnkereta(
                      text: "Antar Kota",
                      icon: Icon(Icons.train, size: 45),
                      warna: Colors.pink,
                    ),

                    Mnkereta(
                      text: "Lokal",
                      icon: Icon(Icons.train_outlined, size: 45),
                      warna: Colors.blue,
                    ),

                    Mnkereta(
                      text: "Komuter",
                      icon: Icon(Icons.train, size: 45),
                      warna: Colors.amber,
                    ),

                    Mnkereta(
                      text: "LRT",
                      icon: Icon(Icons.train_outlined, size: 45),
                      warna: Colors.green,
                    ),

                    Mnkereta(
                      text: "antar kota",
                      icon: Icon(Icons.train, size: 45),
                      warna: Colors.redAccent,
                    ),

                    Mnkereta(
                      text: "lrt",
                      icon: Icon(Icons.train_outlined, size: 45),
                      warna: Colors.purple,
                    ),

                    Mnkereta(
                      text: "Woosh",
                      icon: Icon(Icons.train, size: 45),
                      warna: Colors.deepOrange,
                    ),

                    Mnkereta(
                      text: "busines",
                      icon: Icon(Icons.train_outlined, size: 45),
                      warna: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            // Ini menu item
            SizedBox(height: 30),
            Mnitem(),
            Trip(),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo terbaru?",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.5, color: Colors.black),
                    ),
                    child: Text("lihat semua"),
                  ),
                ],
              ),
            ),
            banner1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/home.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/train (1).png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/train-ticket.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/profile.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
