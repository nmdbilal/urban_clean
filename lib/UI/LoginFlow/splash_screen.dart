import 'package:flutter/material.dart';
import 'package:urban_clean/constants/strings.dart';

import '../../utils/splash_custom_paint.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});


  @override

  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
          children: [

            CustomPaint(
              size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.height*2.05).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter3(),
            ),

            CustomPaint(
              size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.height*2.05).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter2(),
            ),
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.height*2.05).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            const Center(
              child: Text(splashTitle,style: TextStyle(fontSize:60,fontWeight:FontWeight.w700,color: Colors.white),),
            )
          ],
        )
    );
  }
}
