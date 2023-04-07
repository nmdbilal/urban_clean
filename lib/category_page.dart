import 'package:flutter/material.dart';
import 'package:urban_clean/constants/colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Map data ={
    "category":[
      {
        "name": "Cleaning",
        "color":0xFFFFE0B2,
        "icon":0xeeca,
        "icon_color":0xFFFF8F00,

      },  {
        "name": "Painting",
        "color":0xFFBBDEFB,
        "icon":0xeeca,
        "icon_color":0xFF0D47A1,

      },  {
        "name": "Laundry",
        "color":0xFFFFCDD2,
        "icon":0xf180,
        "icon_color":0xFFB71C1C,
      },  {
        "name": "Shipping",
        "color":0xFFCE93D8,
        "icon":0xeeca,
        "icon_color":0xFF6A1B9A,
      },  {
        "name": "Bike Service",
        "color":0xFFB2EBF2,
        "icon":0xeeca,
        "icon_color":0xFF00838F,

      },  {
        "name": "Handy Men",
        "color":0xFFF8BBD0,
        "icon":0xeeca,
        "icon_color":0xFF880E4F,

      },  {
        "name": "Car Service",
        "color":0xFFFFF9C4,
        "icon":0xeeca,
        "icon_color":0xFFFF8F00,

      },  {
        "name": "Roofing",
        "color":0xFFFFD180,
        "icon":0xeeca,
        "icon_color":0xFFFF6F00,

      },  {
        "name": "Plumbing",
        "color":0xFFFFD180,
        "icon":0xeeca,
        "icon_color":0xFF4527A0,

      },

    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9ebf2),
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: blackColor,
        ),
        title: const Text(
          "Category",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          const SizedBox(height:30),
          Padding(padding: const EdgeInsets.all(18),
            child: GridView.builder(
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 13,
                mainAxisSpacing: 30,
                 // childAspectRatio: 3/4
              ),
              shrinkWrap: true,
              itemCount: data["category"].length,
              itemBuilder: (BuildContext context, index){
                return Container(
                  decoration: const BoxDecoration(color: whiteColor,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(data["category"][index]["color"]),
                        radius: 30,
                        child: Icon(IconData(data["category"][index]["icon"],fontFamily: 'MaterialIcons'),
                          color: Color(data["category"][index]
                        ["icon_color"]),),
                      ),
                      const SizedBox(height: 10),
                      Text(data["category"][index]["name"])
                    ],
                  ),
                );
              }
          ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 150,
            child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context,int index){
                  return  Padding(padding: const EdgeInsets.all(10),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(color: appPrimaryColor,borderRadius: BorderRadius.circular(15),
                        ),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("20% Off",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color:whiteColor ),),
                            SizedBox(height: 10,),
                            Text("For First Time Users",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:whiteColor ),),
                            SizedBox(height: 10,),
                            Text("Use Code:xxxix",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:whiteColor ),),

                          ],
                        )
                    ),
                  );
                }

            ),
          ),
        ],
      ),
    );
  }
}
