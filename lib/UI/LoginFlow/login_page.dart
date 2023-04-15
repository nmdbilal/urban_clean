import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0f7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        ),
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color:appPrimaryColor),
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Sign in to Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor:  Color(0xfff4f0f7),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: appPrimaryColor,
                            ),
                            hintText: "yarabyarab5771@gmail.com",
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        controller: passwordController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:  Color(0xfff4f0f7),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: appPrimaryColor,
                              ),
                              hintText: "**************",
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25))))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              activeColor: appPrimaryColor,
                              onChanged: (value) {},
                            ),
                            Text("Remember me"),
                          ],
                        ),
                        Text(
                          "Forgot password ?",
                          style: TextStyle(color: appPrimaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                          onPressed: () async {
                            print(emailController.text);
                            print(passwordController.text);
                            try{
                              final dio = Dio();
                              final response = await dio.post('https://admin-stage.myfitindia.com/api/v1/auth/login',
                                  data : {"phone": "syed@gmail.com", "password" : "Syed@123"}
                              );
                              print("Billu bilal ${response.data}");
                            }catch(e){
                              var error = e as DioError;
                              print((error.response!.data as Map)["errors"][0]["message"]);
                            }
                           //  ApiProvider().processCategory();
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: appPrimaryColor)),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
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
                "Login!",
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