import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:e_commerce/const/allcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homeoage extends StatefulWidget {
  const Homeoage({super.key});

  @override
  State<Homeoage> createState() => _HomeoageState();
}

class _HomeoageState extends State<Homeoage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Fola ",style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold
            ),),
             Text("Let's start the shopping "),
             SizedBox(height: 20,),
            CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                  height: 130,
                  viewportFraction: 0.7
                ),
                itemBuilder:(BuildContext context, int itemIndex, int pageViewIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Allcolor.primarycolor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(itemIndex.toString()),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
