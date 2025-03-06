import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Allcolor.primarycolor,

      body: Center(child: Text("SW E-COMMERCE",style: TextStyle(color: Colors.white,fontSize: 35, fontWeight: FontWeight.bold),)),
    );
  }
}