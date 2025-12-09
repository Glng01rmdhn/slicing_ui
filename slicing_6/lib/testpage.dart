import 'package:flutter/material.dart';

class Testpage extends StatelessWidget {
  const Testpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Row(
            children: [
              SizedBox(height: 10,),

              Container(
                height: 200,
                width: 200,
                color: Colors.white,
              )
            ],
          ),
          
        ),
      ),
    );
  }
}
