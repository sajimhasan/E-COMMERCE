import 'package:e_commerce/UI/fevorite.dart';
import 'package:e_commerce/UI/homeoage.dart';
import 'package:e_commerce/UI/my_card.dart';
import 'package:e_commerce/UI/profile.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:flutter/material.dart';

class Buttomnavigationscreen extends StatefulWidget {
  const Buttomnavigationscreen({super.key});

  @override
  State<Buttomnavigationscreen> createState() => _ButtomnavigationscreenState();
}

class _ButtomnavigationscreenState extends State<Buttomnavigationscreen> {
  List<Widget> pages=[
    Homeoage(),
    Fevorite(),
    MyCard(),
    profile()

  ];
  int _currentIndex = 0 ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      unselectedItemColor: Colors.black54,
      selectedItemColor: Allcolor.primarycolor,
        items:[ 
       BottomNavigationBarItem(icon: Icon(Icons.home),label:' ' ),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: '')
        ],
        onTap: (index){
         
          setState(() {
             _currentIndex = index; 
          });
        },),
        body: pages[_currentIndex],

    );
  }
}