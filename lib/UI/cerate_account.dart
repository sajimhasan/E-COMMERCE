import 'package:e_commerce/UI/login_page.dart';
import 'package:e_commerce/UI/setup_profile.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:e_commerce/until/button_unilt.dart';
import 'package:e_commerce/until/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CerateAccount extends StatelessWidget {
  const CerateAccount({super.key});

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
                Text('Create Account',style: Allstyle.Main.copyWith(fontWeight: FontWeight.bold) ,),
                SizedBox(height: 20,),
                Text('Create an account so you can explore all the ',style: Allstyle.subtitle),
                Text('existing jobs',style: Allstyle.subtitle,),
                SizedBox(height: 80,),
                ButtonUnilt(hintext: 'Email'),
                SizedBox(height: 20,),
                ButtonUnilt(hintext: 'Password'),
                SizedBox(height: 20,),
                ButtonUnilt(hintext: 'Confirm Password'),
                
                SizedBox(height: 40,),

                Custombutton(text: "Sign up", textcolor: Colors.white, containercolor: Allcolor.primarycolor, height: 60, width: 357, onTap: (){
                  Get.to(setup_profile());
                }),
                SizedBox(height: 20,),
                MaterialButton(onPressed: (){
                  Get.to(LoginPage());

                },child: Text('Already have an account'),)

              ],
            ),
          )
        ],
      ),
    );
   
  }
}