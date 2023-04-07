import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = appShade1Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.1000000);
    path0.lineTo(size.width*0.0975600,0);
    path0.lineTo(size.width*0.8952400,0);
    path0.lineTo(size.width,size.height*0.0935600);
    path0.lineTo(size.width,size.height*0.7011200);
    path0.lineTo(size.width*0.7980000,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,size.height*0.1007000);

    canvas.drawPath(path0, paint0);


    Paint paint1 = Paint()
      ..color = appShade1Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path1 = Path();
    path1.moveTo(size.width*0.1000000,0);
    path1.cubicTo(size.width*0.1400000,0,size.width*0.2000000,size.height*0.0280000,size.width*0.2000000,size.height*0.1000000);
    path1.cubicTo(size.width*0.2000000,size.height*0.1400000,size.width*0.1700000,size.height*0.2000000,size.width*0.1000000,size.height*0.2000000);
    path1.cubicTo(size.width*0.0600000,size.height*0.2000000,0,size.height*0.1700000,0,size.height*0.1000000);
    path1.cubicTo(0,size.height*0.0600000,size.width*0.0300000,0,size.width*0.1000000,0);
    path1.close();

    canvas.drawPath(path1, paint1);


    Paint paint2 = Paint()
      ..color = appShade1Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path2 = Path();
    path2.moveTo(size.width*0.9004400,size.height*-0.0012200);
    path2.cubicTo(size.width*0.9404400,size.height*-0.0012200,size.width*1.0004400,size.height*0.0267800,size.width*1.0004400,size.height*0.0987800);
    path2.cubicTo(size.width*1.0004400,size.height*0.1387800,size.width*0.9704400,size.height*0.1987800,size.width*0.9004400,size.height*0.1987800);
    path2.cubicTo(size.width*0.8604400,size.height*0.1987800,size.width*0.8004400,size.height*0.1687800,size.width*0.8004400,size.height*0.0987800);
    path2.cubicTo(size.width*0.8004400,size.height*0.0587800,size.width*0.8304400,size.height*-0.0012200,size.width*0.9004400,size.height*-0.0012200);
    path2.close();

    canvas.drawPath(path2, paint2);


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
      ..color =  appPrimaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.1000000);
    path0.lineTo(size.width*0.0936000,0);
    path0.lineTo(size.width*0.9020000,0);
    path0.lineTo(size.width,size.height*0.0963200);
    path0.lineTo(size.width,size.height*0.5014000);
    path0.lineTo(size.width*0.6946800,size.height*0.9987400);
    path0.lineTo(0,size.height);
    path0.lineTo(0,size.height*0.1022400);

    canvas.drawPath(path0, paint0);


    Paint paint1 = Paint()
      ..color =  appPrimaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path1 = Path();
    path1.moveTo(size.width*0.1000000,0);
    path1.cubicTo(size.width*0.1400000,0,size.width*0.2000000,size.height*0.0280000,size.width*0.2000000,size.height*0.1000000);
    path1.cubicTo(size.width*0.2000000,size.height*0.1400000,size.width*0.1700000,size.height*0.2000000,size.width*0.1000000,size.height*0.2000000);
    path1.cubicTo(size.width*0.0600000,size.height*0.2000000,0,size.height*0.1700000,0,size.height*0.1000000);
    path1.cubicTo(0,size.height*0.0600000,size.width*0.0300000,0,size.width*0.1000000,0);
    path1.close();

    canvas.drawPath(path1, paint1);


    Paint paint2 = Paint()
      ..color =  appPrimaryColor

      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path2 = Path();
    path2.moveTo(size.width*0.8999800,size.height*-0.0019000);
    path2.cubicTo(size.width*0.9399800,size.height*-0.0019000,size.width*0.9999800,size.height*0.0261000,size.width*0.9999800,size.height*0.0981000);
    path2.cubicTo(size.width*0.9999800,size.height*0.1381000,size.width*0.9699800,size.height*0.1981000,size.width*0.8999800,size.height*0.1981000);
    path2.cubicTo(size.width*0.8599800,size.height*0.1981000,size.width*0.7999800,size.height*0.1681000,size.width*0.7999800,size.height*0.0981000);
    path2.cubicTo(size.width*0.7999800,size.height*0.0581000,size.width*0.8299800,size.height*-0.0019000,size.width*0.8999800,size.height*-0.0019000);
    path2.close();

    canvas.drawPath(path2, paint2);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}