import 'package:e_commerce/UI/add_to_card.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:e_commerce/until/button_unilt.dart';
import 'package:e_commerce/until/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class setup_profile extends StatelessWidget {
  const setup_profile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10),),
            CircleAvatar(
              child: IconButton(onPressed: (){
              
              }, icon: Icon(Icons.arrow_back)),
            ),

          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(
            child: Column(
              
              children: [
                Text('Profile Setup',style: Allstyle.Main.copyWith(fontWeight: FontWeight.bold) ,),
                SizedBox(height: 20,),
                Text('Please fill be below details to complete',style: Allstyle.subtitle),
                Text('your profile',style: Allstyle.subtitle,),
                SizedBox(height: 20,),
                 Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Allcolor.primarycolor,
                  backgroundImage: AssetImage("image/2.png"), // Change to your image
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      // Open camera or gallery
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        
                        color:Allcolor.primarycolor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                    
                      ),
                      
                      child: Icon(Icons.camera_alt,color: Colors.white,)),
                  ),
                  
                  )
              ]),

               
                SizedBox(height: 30,),
                ButtonUnilt(hintext: 'Full Name'),
                SizedBox(height: 20,),
                ButtonUnilt(hintext: 'Address'),
                SizedBox(height: 20,),
                ButtonUnilt(hintext: 'Phone Number'),
                
                SizedBox(height: 40,),

                Custombutton(text: "Complete Setup", textcolor: Colors.white, containercolor: Allcolor.primarycolor, height: 60, width: 357, onTap: (){
                  Get.to(AddToCard());
                }),
                

              ],
            ),
          )
        ],
      ),
    );
   
  }
}