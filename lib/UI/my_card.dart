import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:e_commerce/until/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "My card",
          style: Allstyle.title,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context , index){
                return _cartview();

            })),
            Container(
              padding: EdgeInsets.only(left: 27,right: 27,bottom: 27),
              height: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text("Total",style:TextStyle(
                        color: Allcolor.primarycolor,
                        fontSize:20,fontWeight: FontWeight.bold
                      ),)),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset("image/4.png",height: 20,width: 20,), Text("1,990",style: Allstyle.subtitle,)],
                      ))
                    ],
                  ),
                  Custombutton(text: "Buy now ", textcolor: Colors.white, containercolor: Allcolor.primarycolor, height: 60, width: Get.width, onTap: (){

                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
   _cartview(){
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
      decoration: BoxDecoration( 
        color:Allcolor.thridcolors,
        borderRadius: BorderRadius.circular(30),
      
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset("image/3.png")),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Apple W-series 6",style: TextStyle(
                overflow: TextOverflow.ellipsis
              ),),
              Row(
                children: [
                  Image.asset("image/4.png",height: 20,width: 20,),
                  SizedBox(width: 3,),
                  Text("1235",style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),)
                ],
              )
      
            ],
          )),
           Expanded(
            flex: 2,
            child: Column(
            children: [
              Text("Size:${3000}"),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(color: Allcolor.primarycolor)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.remove,size: 16,),
                    Text("7",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.add,size: 16,color: Allcolor.primarycolor,)
                  ],
                ),
              )
              
            ],
          ))
        ],
      ),
      ),
    );
   }
}
