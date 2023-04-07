import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:urban_clean/UI/LoginFlow/slides.dart';
import 'package:urban_clean/constants/strings.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }

}
int pagesLength = 0;
class _WelcomeScreenState extends State<WelcomeScreen>{

  List<Widget> pages = [
    Slides(
      imagePath : welcome1ImagePath,
      title:welcome1Title,
      highlightIndicatorAt:0,
      onPressed : (){
        log("1");
      },
      description : welcome1Description,
    ),
    Slides(imagePath :  welcome2ImagePath,
        title:welcome2Title,
        highlightIndicatorAt:1,

        onPressed : (){
          log("2");

        },
        description : welcome2Description
    ),
    Slides(imagePath :  welcome3ImagePath,
        title:welcome3Title,
        highlightIndicatorAt:2,

        onPressed : (){
          log("3");

        },
        description : welcome3Description
    ),
  ];
  @override
  void initState() {
    pagesLength=pages.length;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        children: pages,

      ),

    );
  }

}