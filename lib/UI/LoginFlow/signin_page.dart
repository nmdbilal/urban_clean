import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class SigninPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SigninPageState();
  }
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 212, 212),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        title: Text(
          "Sign in",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width * 0.4,
            margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "With Your Phone Number ",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: appPrimaryColor,
                      ),
                      hintText: "+91 6534950378",
                      suffixIcon: Icon(
                        Icons.check_circle_rounded,
                        color: appPrimaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appPrimaryColor,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.w400)),
              SizedBox(width: 3),
              Text(
                "Sign up!",
                style:
                TextStyle(color: appPrimaryColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
