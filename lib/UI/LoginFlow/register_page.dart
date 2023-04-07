import 'package:flutter/material.dart';
import 'package:urban_clean/constants/strings.dart';
import '../../constants/colors.dart';
import '../../utils/welcome_custom_paint.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top:0,
            child: Container(
              color: blueColor,
              height: MediaQuery.of(context).size.height* 0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/image4.jpg"),
            ),
          ),
          Positioned(
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
                        const Center(
                          child:
                          Text(registerTitle,style: TextStyle(fontSize:30,fontWeight:FontWeight.w700,color: whiteColor),
                          ),
                        ),
                        const SizedBox(height: 40,),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child:  ElevatedButton(onPressed: (){},
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
                              child: const Text(withEmail,style: TextStyle(color: appPrimaryColor),)),
                        ),
                        const SizedBox(height: 35),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child:  ElevatedButton(onPressed: (){},
                              style:  ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(orangeColor
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                              child: const Text(phoneNumber,style: TextStyle(color: whiteColor),)),
                        ),
                        const SizedBox(height: 45),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(account,style: TextStyle(color: Colors.white),),
                            Text(register,style: TextStyle(color: Colors.yellow),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}