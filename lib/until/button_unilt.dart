import 'package:e_commerce/const/allcolor.dart';
import 'package:flutter/material.dart';

class ButtonUnilt extends StatelessWidget {
  final String hintext; 
  const ButtonUnilt({super.key,required this.hintext});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Allcolor.primarycolor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: hintext,
                        border:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )
                        ),
                       focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 5
                        )
                       )
                      ),
                    ),
                  ),
                );
  }
}