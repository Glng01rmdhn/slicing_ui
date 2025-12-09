import 'package:flutter/material.dart';
import 'package:slicing_5/decoration/set.dart';
import 'package:slicing_5/komponen/appbar.dart';
import 'package:slicing_5/komponen/flashsale.dart';
import 'package:slicing_5/komponen/iklanbanner.dart';
import 'package:slicing_5/komponen/menuapps.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar menu
              Appbar(),
              SizedBox(height: 90),
              //ini bagian iklan banner
              Iklanbanner(),
              SizedBox(height: 10),
              //ini bagian menu aplikasi
              Menuapps(),
              SizedBox(height: 10),
              //ini bagian flashsale
              Flashsale(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/profile.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/profile.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/profile.png")),
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