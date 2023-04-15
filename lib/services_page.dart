import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  Map data ={
    "service":[
      {
        "name": "Wash",
        "color":0xFFFFE0B2,
        "icon":0xf176,
        "icon_color":0xFFFF8F00,

      },  {
        "name": "Interior Clean",
        "color":0xFFBBDEFB,
        "icon": 0xf06e3,
        "icon_color":0xFF0D47A1,

      },  {
        "name": "Tyre Repair",
        "color":0xFFFFCDD2,
        "icon":0xf06aa,
        "icon_color":0xFFB71C1C,
      },  {
        "name": "Engine Service",
        "color":0xFFCE93D8,
        "icon":0xf1cf,
        "icon_color":0xFF6A1B9A,
      },  {
        "name": "Denting",
        "color":0xFFF8BBD0,
        "icon":0xf0a1,
        "icon_color":0xFF880E4F,

      },  {
        "name": "Glass Change",
        "color":0xFFFFD180,
        "icon":0xf10f,
        "icon_color":0xFFFF6F00,

      },  {
        "name": "Oil Change",
        "color":0xFFFFF9C4,
        "icon":0xf0707,
        "icon_color":0xFFFF8F00,

      },  {
        "name": "Breaks Change",
        "color":0xFFB2EBF2,
        "icon":0xe347,
        "icon_color":0xFF00ACC1,

      },
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f0f7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Icon(
            Icons.arrow_back_ios_outlined,
          color: blackColor,
        ),
        title: Text("Services",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.all(18),
          child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 13,
                mainAxisSpacing: 30,
              ),
              shrinkWrap: true,
              itemCount: data["service"].length,
              itemBuilder: (BuildContext context, index){
                return Container(
                  decoration: BoxDecoration(color: whiteColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(data["service"][index]["color"]),
                        radius: 28,
                        child: Icon(IconData(data["service"][index]["icon"],fontFamily: 'MaterialIcons'),
                          color: Color(data["service"][index]
                          ["icon_color"]),),
                      ),
                      SizedBox(height: 10,),
                      Text(data["service"][index]["name"])
                    ],
                  ),
                );
              }
          
          )
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 50,
              width:320,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: appPrimaryColor,
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
