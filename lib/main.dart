import 'package:e_commerce/UI/homeoage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homeoage(
        
      ),

    );
  }
}