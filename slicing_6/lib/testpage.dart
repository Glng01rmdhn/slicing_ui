import 'package:flutter/material.dart';
import 'package:slicing_6/komponen/isi.dart';

class Testpage extends StatelessWidget {
  const Testpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Isi(),
              Isi(),
              Isi(),
            ],
          ),
        ),
      ),
    );
  }
}
