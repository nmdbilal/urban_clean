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
      backgroundColor: const Color(0xfff4f0f7),
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
            height: 100,
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: whiteColor,borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text("Enter Email"),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor:  Color(0xfff4f0f7),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: appPrimaryColor,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        hintText: "nmdbilal123@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)))),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Enter New Password",),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff4f0f7),
                        prefixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: blackColor,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        hintText: "***************",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)))),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Re-Enter-New-Password",),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:  Color(0xfff4f0f7),
                        prefixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: blackColor,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        hintText: "***************",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 100,),
          Padding(padding: EdgeInsets.all(15),
          child: SizedBox(
            height: 53,
            width: MediaQuery.of(context).size.width * 0.2,
            child: ElevatedButton(
                onPressed: (){},
                child: Text("Continue"),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: appPrimaryColor)
            ),
          ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400)),
              SizedBox(
                width: 3,
              ),
              Text(
                "Sign in!",
                style:
                TextStyle(color: appPrimaryColor, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
