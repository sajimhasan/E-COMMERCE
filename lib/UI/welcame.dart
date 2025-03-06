import 'package:e_commerce/UI/login_page.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:e_commerce/until/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/const/allcolor.dart';


class Welcame extends StatelessWidget {
  const Welcame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25,top: 50,),
          child: Image.asset("image/1.png"),
        ),
        SizedBox(height: 30,),
        Text('Discover Your',style: Allstyle.Main.copyWith(fontWeight: FontWeight.bold),),
        Text('Dream Job here',style:Allstyle.Main.copyWith(fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
        Text('Explore all the existing job roles based on your ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        Text(' interest and study major',style:TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500
        ),),
        SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Custombutton(text: 'Login', textcolor: Colors.white, containercolor: Allcolor.primarycolor, height: 60, width: 160, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginPage()));
            }),
            Custombutton(text: 'Register', textcolor: Colors.black, containercolor: Colors.transparent, height: 60, width: 160, onTap: (){})
          ],
        )
      ],
     ) ,   
    );
  }
}