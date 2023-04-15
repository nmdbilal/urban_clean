import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:urban_clean/constants/colors.dart';

class FindingCleaningMen extends StatefulWidget {
  const FindingCleaningMen({Key? key}) : super(key: key);

  @override
  State<FindingCleaningMen> createState() => _FindingCleaningMenState();
}

class _FindingCleaningMenState extends State<FindingCleaningMen> {

  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xfff4f0f7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: blackColor,
        ),
        title: Text("Finding Cleaning Men",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child:  GoogleMap(
                initialCameraPosition: _kInitialPosition,
              ),
          ),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 328,
                decoration: BoxDecoration(
                    color:  Color(0xfff4f0f7),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(40,40)
                    )
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                 children: [
                   Text("We found cleaning men to work on your home",style: TextStyle(fontWeight: FontWeight.w500),),
                   SizedBox(height: 20),
                   Row(
                     children: [
                       CircleAvatar(
                         backgroundImage: AssetImage("assets/images/image3.jpg"),
                         radius: 30,
                       ),
                       SizedBox(width: 15),
                       Column(
                         children: [
                           Text("Lehan Raheja",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                           SizedBox(height: 5),
                           Text("* * * * * 5.0",style: TextStyle(fontSize: 17),),
                         ],
                       ),
                       SizedBox(width: 75),
                       Text("Change",style: TextStyle(color: appPrimaryColor,fontWeight: FontWeight.w500))
                     ],
                   ),
                   Card(
                     child: Padding(padding: EdgeInsets.all(7),
                         child:Column(
                           children: [
                             Row(
                               children: [
                                 Icon(Icons.account_circle,color: appPrimaryColor),
                                 SizedBox(width: 8),
                                 Text("Lehan Raheja"),
                                 SizedBox(width: 90),
                                 Text("View Details",style: TextStyle(color: appPrimaryColor),)
                               ],
                             ),
                             SizedBox(height: 7),
                             Row(
                               children: [
                                 Icon(Icons.phone_android_outlined,color: appPrimaryColor),
                                 SizedBox(width: 8),
                                 Text("92881993838"),
                               ],
                             ),
                             SizedBox(height: 7),
                             Row(
                               children: [
                                 Icon(Icons.location_on_outlined,color: appPrimaryColor),
                                 SizedBox(width: 8),
                                 Text("hyderabad,India"),
                               ],
                             ),
                           ],
                         ),
                         )
                     ),
                   Padding(padding: EdgeInsets.all(15),
                     child: SizedBox(
                       height: 53,
                       width: 300,
                       child: ElevatedButton(
                           onPressed: (){},
                           child: Text("Continue"),
                           style: ElevatedButton.styleFrom(
                               shape: StadiumBorder(),
                               backgroundColor: appPrimaryColor)
                       ),
                     ),
                   ),

                 ],
                ),
              )
          )
        ],
      )
    );
  }
}
