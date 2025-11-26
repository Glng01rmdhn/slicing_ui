import 'package:flutter/material.dart';
import 'package:slicing_ui4/komponen%20profile/komponenakun.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: Image.asset("assets/profile.png").image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Galang Ramadhan ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "galang2909@gmail.com ",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text("+6285890301212 ", style: TextStyle(fontSize: 10)),
                        SizedBox(height: 10),
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.white, size: 15),
                              SizedBox(width: 5),
                              Text(
                                "Basic",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.edit, color: Colors.blue),
              ],
            ),
            SizedBox(height: 50),
            Text(
              "Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 20),
            Komponenakun(icon: Icons.shopping_basket, menu: "My Order"),
            Komponenakun(icon: Icons.subscriptions, menu: "My Subscription"),
            Komponenakun(icon: Icons.percent, menu: "Promo"),
            Komponenakun(icon: Icons.card_membership, menu: "Payment"),
            Komponenakun(icon: Icons.question_mark, menu: "Help"),
            Komponenakun(icon: Icons.language, menu: "Language"),
            Komponenakun(icon: Icons.logout, menu: "Logout"),
          ],
        ),
      ),
    );
  }
}