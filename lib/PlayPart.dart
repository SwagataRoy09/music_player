import 'package:musicapk/Colours.dart';
import 'package:flutter/material.dart';

class PlayPart extends StatelessWidget {
  const PlayPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Buttons(iconData: Icons.shuffle_rounded),
        Buttons(iconData:Icons.skip_previous_outlined),
        Play(),
        Buttons(iconData:Icons.skip_next_outlined),
        Buttons(iconData:Icons.repeat_rounded),
      ],
    );
  }
}
class Play extends StatelessWidget {
  const Play({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration:  BoxDecoration(
        color: Colour().secondcolour,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow( color: Colour().secondcolour.withOpacity(.5),offset:Offset(3,3) ,spreadRadius:7,blurRadius:10 ),
          BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
        ],
      ),
      child: Container(
          margin:EdgeInsets.all(5),
          height: 60,
          width: 60,
          decoration:  BoxDecoration(
            color: Colour().maincolour,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(2,2) ,spreadRadius:7,blurRadius:10 ),
              BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
            ],
          ),
          child:Icon(Icons.play_arrow_outlined)),);
  }
}

class Buttons extends StatelessWidget {
 final IconData iconData;
  const Buttons({Key? key,required this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration:  BoxDecoration(
        color: Colour().maincolour,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(2,3) ,spreadRadius:7,blurRadius:10 ),
          BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
        ],
      ),
      child: Stack(children: [
        Center(
          child: Container(
          height: 40,
          width: 40,
          decoration:  BoxDecoration(
            color: Colour().secondcolour,
          shape: BoxShape.circle,
            boxShadow: [
              BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(2,3) ,spreadRadius:7,blurRadius:10 ),
              BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
            ],
          ),
          child: Container(
            margin:EdgeInsets.all(5),
              height: 40,
              width: 40,
              decoration:  BoxDecoration(
                color: Colour().maincolour,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow( color: Colour().secondcolour.withOpacity(.4),offset:Offset(3,3) ,spreadRadius:7,blurRadius:10 ),
                  BoxShadow(color: Color(0xfff48fb1),offset:Offset(-3,-3),blurRadius:10,spreadRadius: -4)
                ],
              ),
              child:Icon(iconData)),
        ),),
      ],),
    );
  }
}
