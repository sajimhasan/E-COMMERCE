import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  String text; 
  Color textcolor; 
  Color containercolor;
  double height;
  double width; 
  VoidCallback onTap;



   Custombutton({super.key,required this.text, required this.textcolor,required this.containercolor,required this.height , required this.width,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color:containercolor,
              borderRadius: BorderRadius.circular(10)
      
            ),
            child: Center(child: Text(text,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,color: textcolor
            ),)),
          ),
    );
  }
}