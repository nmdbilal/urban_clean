import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color =  appPrimaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width*0.1281250,size.height);
    path0.lineTo(size.width,size.height*0.4271341);
    path0.lineTo(size.width,0);
    path0.lineTo(0,0);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RPSCustomPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0 = Paint()
      ..color = appShade1Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width*0.3750000,size.height);
    path0.lineTo(size.width,size.height*0.5445122);


    path0.lineTo(size.width,0);
    path0.lineTo(0,0);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainter3 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = appShade2Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width,size.height*1.0015244);
    path0.lineTo(size.width,0);
    path0.lineTo(0,0);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}