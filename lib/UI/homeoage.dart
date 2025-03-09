import 'package:flutter/material.dart';

class Homeoage extends StatefulWidget {
  const Homeoage({super.key});

  @override
  State<Homeoage> createState() => _HomeoageState();
}

class _HomeoageState extends State<Homeoage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text('Hello, Fola'),
                  SizedBox(height: 10,),
                  Text("Let's start shopping")
                ],
              ),
            ],
          )
        ],
      ),

    );
  }
}