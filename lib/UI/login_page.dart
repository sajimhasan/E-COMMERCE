import 'package:e_commerce/UI/cerate_account.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:e_commerce/const/allstyle.dart';
import 'package:e_commerce/until/button_unilt.dart';
import 'package:e_commerce/until/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                Text('Login Here',style: Allstyle.Main.copyWith(fontWeight: FontWeight.bold) ,),
                SizedBox(height: 20,),
                Text('Welcome back you’ve',style: Allstyle.title),
                Text('been missed!',style: Allstyle.title,),
                SizedBox(height: 80,),
                ButtonUnilt(hintext: 'Email'),
                SizedBox(height: 20,),
                ButtonUnilt(hintext: 'Password'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(onPressed: (){
                    
                    },
                    child: Text('Forgot your password?',style: Allstyle.Main.copyWith(fontSize: 14),),),
                  ],
                ),
                SizedBox(height: 40,),

                Custombutton(text: "Sign in", textcolor: Colors.white, containercolor: Allcolor.primarycolor, height: 60, width: 357, onTap: (){}),
                SizedBox(height: 20,),
                MaterialButton(onPressed: (){
                  Get.to(CerateAccount());

                },child: Text('Create new account'),)

              ],
            ),
          )
        ],
      ),
    );
  }
}