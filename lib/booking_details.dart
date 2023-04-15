import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  Map data = {
    "rooms":[
      {
        "icon": 0xeeca,
        "icon_color":0xFF43A047,
        "color":0xFFA7FFEB,
        "room_type": "Two Bedrooms",
        "money": "40"

      },
      {
        "icon": 0xeebe,
        "icon_color":0xFF7B1FA2,
        "color":0xFFCE93D8,
        "room_type": "Three Bathrooms",
        "money": "40"


      },
      {
        "icon": 0xf170,
        "icon_color":0xFFEF6C00,
        "color":0xFFFFB74D,
        "room_type": "Two Bathrooms",
        "money": "40"

      }
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
          Icons.arrow_back_ios_outlined,color: blackColor,),
        title: Text(
          "Booking Details",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor)
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext, int index){
                return Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           Container(
                             height: 45,
                             width: 47,
                             decoration: BoxDecoration(
                                 color: Color(data["rooms"][index]["color"]),
                                 borderRadius:
                                 BorderRadius.circular(7)
                             ),
                             child: Icon(
                               IconData(data["rooms"][index]["icon"],
                                   fontFamily: 'MaterialIcons'),
                               color: Color(data["rooms"][index]
                               ["icon_color"]),
                             ),
                           ),
                           SizedBox(
                             width: 20,
                           ),
                           Text(data["rooms"][index]["room_type"],
                           style: TextStyle(fontSize: 17,),)
                         ],
                       ),
                        // SizedBox(width: 60,),
                        Row(
                          children: [
                            Text(data["rooms"][index]["money"],
                            style: TextStyle(fontWeight: FontWeight.w500,color: appPrimaryColor,fontSize: 17),)
                          ],
                        ),
                        
                      ],
                    ),
                    ),
                  ],
                );
              }
          ),
          Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Timings:",style: TextStyle(fontSize: 18,color: appPrimaryColor,fontWeight: FontWeight.w500),),
                    Text("120",style: TextStyle(fontSize: 18,color: appPrimaryColor,fontWeight: FontWeight.w500))
                  ],
                ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("10:00 am - 11:00am"),
                      SizedBox(height: 30,),
                      Text("2 HOURS",style: TextStyle(fontSize: 16,color: appPrimaryColor,fontWeight: FontWeight.w500)),
                      SizedBox(height: 35,),
                      Text("Date:",style: TextStyle(fontSize: 16,color: appPrimaryColor,fontWeight: FontWeight.w500)),
                      SizedBox(height: 35,),
                      Text("March 25  Day  Sunday"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/image3.jpg"),
                        radius: 30,
                      ),
                      SizedBox(height: 15),
                      Text("Lehan Raheja",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      SizedBox(height: 15),
                      Text("* * * * * 5.0",style: TextStyle(fontSize: 17),),
                      SizedBox(height: 15),
                      Text("View Full Details",style: TextStyle(fontSize: 16,color: appPrimaryColor,fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              )
            ],
          ),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.all(15),
            child: SizedBox(
              height: 53,
              width: 300,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: appPrimaryColor)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
