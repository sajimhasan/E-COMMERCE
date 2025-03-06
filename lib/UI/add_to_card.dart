import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:flutter/material.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Allcolor.thridcolors,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Allcolor.thridcolors,
      ),
      body: Container(
        
        child: Column(
          children: [
            Container(
              height: 388,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("image/3.png",fit: BoxFit.contain,),
            ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15),
             child: Column(
               children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Apple Watch Series 6',style: Allstyle.title.copyWith(color: Colors.black54),),
                   ],
                 ),
                 SizedBox(height: 10,),
                 Row(
                  children: [
                    Icon(Icons.star,color: Color(0xFFFCBF0C),)//this row has some work and the add somwthing.. some this work this after the carent
                  ],
                 ),
                 SizedBox(height: 13,),
                 Row(
                  children: [
                    Text('45,000 '),//this row has some work and the add somwthing.. some this work this after the carent

                  ],
                 ),
                 SizedBox(height: 20,),
                 Row(
                  
                   children: [
                     Text('About ',style: Allstyle.title.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
                   ],
                 ),
                 Text('The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.')
               ],
             ),
           ),
           
          ],
        ),
      ),
    );
  }
}