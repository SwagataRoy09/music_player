import 'package:flutter/material.dart';
import 'package:musicapk/Colours.dart';
class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:80.0,
      margin: EdgeInsets.symmetric(vertical: 20.0,horizontal:20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height:50.0,
              width:50.0,
              decoration: BoxDecoration(
                color: Colour().maincolour,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(3,3) ,spreadRadius:7,blurRadius:10 ),
                  BoxShadow( color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
                ],
              ),
              child: Center(child: Icon(Icons.arrow_back_ios,color:Colour().secondcolour,size:25,)),
            ),
            Text('Playing',style: TextStyle(fontFamily:'Cinzel',color: Colour().secondcolour,fontSize:25.0),),
            Container(
              height:50.0,
              width:50.0,
              decoration: BoxDecoration(
                color: Colour().maincolour,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(3,3) ,spreadRadius:7,blurRadius:10 ),
                  BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
                ],
              ),
              child: Icon(Icons.settings_suggest_rounded ,color:Colour().secondcolour,size:25,),
            ),
          ],
        ),
    );
  }
}
