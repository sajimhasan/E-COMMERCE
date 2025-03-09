import 'package:e_commerce/const/allstyle.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("My card",style: Allstyle.title,),
      
      ),
      body: Column(
        children: [
        
        ],
      ),
    );
  }
}