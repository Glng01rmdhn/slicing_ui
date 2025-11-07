import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/kartukaimn.dart';

class kartukai extends StatelessWidget {
  const kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -80,
      child: Container(
        // height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(0, 4)),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 45, child: Image.asset('KAUPAYS.png',)),
                      Row(
                        children: [
                          Text(
                            "Rp.500.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60, child: VerticalDivider()),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kartukaimn(
                        icon: Icon(
                          Icons.qr_code_scanner_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        text: "scan",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          Icons.wallet,
                          color: Colors.black,
                          size: 30,
                        ),
                        text: "Top up",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          Icons.history,
                          color: Colors.black,
                          size: 30,
                        ),
                        text: "Riwayat",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(thickness: 1, height: 20, color: Colors.grey),
            Row(
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.monetization_on, color: Colors.amber),
                    Text("0 RailPoints"),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      Text("basic"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
