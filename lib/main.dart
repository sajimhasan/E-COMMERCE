import 'package:e_commerce/UI/homeoage.dart';
import 'package:e_commerce/UI/my_card.dart';
import 'package:e_commerce/UI/splash.dart';
import 'package:e_commerce/UI/welcame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCard());

       
  }
}
