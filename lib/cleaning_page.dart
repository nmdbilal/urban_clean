import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class CleaningPage extends StatefulWidget {
  const CleaningPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CleaningPageState();
  }
}

class _CleaningPageState extends State<CleaningPage> {
  Map data = {
    "type": "Service",
    "rooms": [
      {
        "icon": 0xeeca,
        "room_type": "Bed Rooms",
        "color": 0xFF81C784,
        "icon_color": 0xFF1B5E20
      },
      {
        "icon": 0xeebe,
        "room_type": "Bath Rooms",
        "color": 0xFFCE93D8,
        "icon_color": 0xFF4A148C
      },
      {
        "icon": 0xf170,
        "room_type": "Living rooms",
        "color": 0xFFFFD180,
        "icon_color": 0xFFE65100
      },
      {
        "icon": 0xf180,
        "room_type": "Laundry Rooms",
        "color": 0xFFBBDEFB,
        "icon_color": 0xFF0D47A1
      },
      {
        "icon": 0xf0662,
        "room_type": "Kitchens",
        "color": 0xFFFFF9C4,
        "icon_color": 0xFFF57F17
      }
    ]
  };
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor:Color(0xffe9ebf2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        title: Text(
          "Cleaning",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25,),
            child: Text("Tell Us About Your Home ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                )),
          ),
          Card(
            margin: EdgeInsets.all(15),
            shadowColor: Colors.blue,
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: Text(
                    data["type"],
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                  endIndent: 0,
                  indent: 0,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: data["rooms"].length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Color(
                                              data["rooms"][index]["color"]),
                                          borderRadius:
                                          BorderRadius.circular(7),
                                        ),
                                        child: Icon(
                                          IconData(data["rooms"][index]["icon"],
                                              fontFamily: 'MaterialIcons'),
                                          color: Color(data["rooms"][index]
                                          ["icon_color"]),
                                        )),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      data["rooms"][index]["room_type"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 40),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 245, 195, 211),
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 190, 243, 247),
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.2,
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
