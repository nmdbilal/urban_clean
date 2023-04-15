import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:urban_clean/constants/colors.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  static final LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

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
        title: Text("Select Location",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
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
                    Card(
                      child: Padding(padding: EdgeInsets.all(17),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Home Location",style: TextStyle(fontWeight: FontWeight.w500),),
                              Text("Change",style: TextStyle(fontWeight: FontWeight.w500,color: appPrimaryColor,decoration: TextDecoration.underline),)
                            ],
                          ),
                          SizedBox(height: 17),
                          Divider(
                            color: blackColor,
                          ),
                          SizedBox(height: 17),
                          Row(
                            children: [
                             Column(
                               children: [
                                 Icon(Icons.location_on_outlined,color: appPrimaryColor,),
                               ],
                             ),
                              SizedBox(width: 7,),
                              Column(
                                children: const [
                                  Text("C34v+3j6,Ambedkar Nagar",style: TextStyle(fontSize: 17),),
                                  SizedBox(height: 5,),
                                  Text("Banjara Hills,Hyderabad,",style: TextStyle(fontSize: 17)),
                                  SizedBox(height: 5,),
                                  Text("Telangana 500033 india.",style: TextStyle(fontSize: 17))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                )
              ))
        ],
      ),
    );
  }
}
