import 'package:flutter/material.dart';
import 'package:urban_clean/UI/LoginFlow/welcome_screen.dart';
import 'package:urban_clean/constants/colors.dart';
import 'package:urban_clean/constants/strings.dart';
import '../../utils/welcome_custom_paint.dart';

class Slides extends StatelessWidget{
  final String? imagePath;
  final String? title;
  final String? description;
  final VoidCallback? onPressed;
  final int? highlightIndicatorAt;
  const Slides({super.key,this.imagePath,this.title,this.description, this.onPressed, this.highlightIndicatorAt});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: blueColor,
        body: Stack(

          children: [
            Positioned(
              top:0,
              child: Container(
                color: blueColor,
                height: MediaQuery.of(context).size.height* 0.5,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(imagePath!),
              ),),
            Positioned(
              // top: 100,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.53,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: appShade2Color,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),topRight: Radius.circular(40)
                    )
                ),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.height).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                    CustomPaint(
                      size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.height).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter2(),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 50,),
                        Center(
                          child:
                          Text(title!,style: const TextStyle(fontSize:30,fontWeight:FontWeight.w700,color: whiteColor),
                          ),
                        ),
                        const SizedBox(height: 40,),
                        Text(description!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize:14,fontWeight:FontWeight.w700,color: whiteColor)),
                        const SizedBox(height: 35,),

                        SizedBox(
                          width: 300,
                          height: 50,
                          child:  ElevatedButton(onPressed: onPressed,
                              style:  ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(
                                    whiteColor
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),


                              child: const Text(getStarted,style: TextStyle(color: appPrimaryColor),)),
                        ),
                        const SizedBox(height: 10,),

                        SizedBox(
                          height: 15,
                          child: Flexible(

                              child: ListView.builder(
                                  padding: EdgeInsets.zero,

                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: pagesLength,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,index){
                                    return
                                      Container(margin:const EdgeInsets.all(2),width: 10,decoration: BoxDecoration(color:highlightIndicatorAt==index?indicatorColor:whiteColor,borderRadius: const BorderRadius.all(Radius.circular(20))),);
                                  })),
                        )

                      ],

                    )
                  ],
                ),

              ),
            ),
          ],
        )

    );
  }
}