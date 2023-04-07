import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9ebf2),
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: blackColor,
        ),
        title: Text(
          "New Password",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: whiteColor,borderRadius: BorderRadius.circular(6)
            ),
          )
        ],
      ),
    );
  }
}
