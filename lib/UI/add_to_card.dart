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
                 SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: retingBulider(5)),
                 SizedBox(height: 13,),
                Row(
  children: [
    SizedBox(width: 5,),
    Image.asset("image/4.png"), 
    SizedBox(width: 2,),
    Text('45,000 ',style: TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800
    ),),
    SizedBox(width: 7,),
    Image.asset("image/23.png"), 
    SizedBox(width: 2,),
    Text('45,000 ',style: TextStyle(
      fontSize: 11.48, color: Colors.grey, fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough
    ),
  ),
  SizedBox(width: 120,),

  Text("Available in stock ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,),textAlign: TextAlign.right,)
  ],
),
                 SizedBox(height: 20,),
                 Row(
                  
                   children: [
                     Text('About ',style: Allstyle.title.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
                   ],
                 ),
                 Text('The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',style: Allstyle.subtitle.copyWith(fontWeight: FontWeight.w400,fontSize: 15),),
                 SizedBox(height: 16,),
                 Text(
              "Select Size",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [35, 36, 37, 38, 39, 40].map((size) {
                return ChoiceChip(
                  label: Text("$size"),
                  selected: size == 37,
                  onSelected: (bool selected) {},
                  selectedColor: Colors.blue,
                  labelStyle: TextStyle(color: Colors.white),
                );
              }).toList(),
            ),


               ],
             ),
           ),
           
          ],
        ),
      ),
    );
  }
  Widget retingBulider(int retaing){
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: retaing,
    itemBuilder: (context, Index){
      return Icon(Icons.star,color: Color(0xFFFCBF0C),);
    }
  );
}

}

