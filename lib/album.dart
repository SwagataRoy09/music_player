import 'package:flutter/material.dart';
import 'package:musicapk/Colours.dart';
class album extends StatefulWidget {
   @override
  State<album> createState() => _albumState();
}
class _albumState extends State<album> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.symmetric(horizontal: 15.0,vertical:15.0),
      child:Container(
        margin: EdgeInsets.all(10),
      height:200,
      width: 200,
      decoration: BoxDecoration(
        color:Colour().maincolour,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(color:Colour().secondcolour,offset: Offset(20,3),spreadRadius:6,blurRadius:20),
          BoxShadow(color: Color(0xfff48fb1).withOpacity(0.1),offset: Offset(-3,-3),spreadRadius:-2,blurRadius:20),
        ]
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),
            child:Image(image: AssetImage('assets/1.jpg'),fit: BoxFit.cover,
            )
      ),
     ),
    );
  }
}
