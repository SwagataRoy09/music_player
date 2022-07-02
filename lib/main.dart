import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:musicapk/NavBar.dart';
import 'package:musicapk/Colours.dart';
import 'package:musicapk/PlayPart.dart';
import 'package:musicapk/album.dart';
main(){
  runApp(MusicApp());
}
class MusicApp extends StatefulWidget {
  MusicApp({Key? key}) : super(key: key);

  @override
   State<MusicApp> createState() => _MusicAppState();
}
class _MusicAppState extends State<MusicApp> {
  double sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colour().maincolour,
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBar(),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colour().maincolour,
                    width: 300,
                    height: 300,
                    child: ListView.builder(itemBuilder: (context, i) {
                      return album();
                    }, scrollDirection: Axis.horizontal,
                      itemCount: 4,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('CLOSER', style: TextStyle(fontFamily: 'Cinzel',
                  color: Colour().secondcolour,
                  fontSize: 10.0),),
              Text('Chain Smocker', style: TextStyle(fontFamily: 'Cinzel',
                  color: Colour().secondcolour,
                  fontSize: 10.0)),
              SliderTheme(data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape (),
                inactiveTrackColor:Color(0xffad1457),
                 activeTrackColor: Color(0xff03a9f4),
                 // Color(0xff03a9f4),
                trackHeight: 5,
                thumbColor: Color(0xff01579b) ,
                thumbShape: RoundSliderThumbShape(
                    elevation: 20, enabledThumbRadius: 8.0,),
              ),
                child: Slider(value: sliderValue, onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                }, max: 20, min: 0),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: PlayPart(), scrollDirection: Axis.horizontal,),
            ],
          ),
        ),
      ),
    );
  }
}