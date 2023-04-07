import 'package:flutter/material.dart';
import 'package:urban_clean/API/api_provider.dart';
import 'package:urban_clean/UI/responses/categories_response.dart';

import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
  ApiProvider().processCategory();
   // // setState(() {
   //   ApiProvider().processCategory();
   // //
   // // });
    super.initState();
  }

  CategoriesResponse categoriesResponse = CategoriesResponse();

  List <String> gridText = ["Cleaning","Laundry","Call Service","Painting","Shipping","Bike Service","Handy Men","More","Cleaning","Laundry","Call Service","Painting","Shipping","Bike Service","Handy Men","More"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(10),
                  child:
                  Text("Logo",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),) ),
              SizedBox(width: 230),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/nature.jpg")
              )
            ],
          ),
          const SizedBox(height: 20,),
          const Padding(padding: EdgeInsets.all(10),
          child: Text("Welcome to our app",style: TextStyle(fontSize: 17),),
          ),
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
          const SizedBox(height: 20),
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(5)),
              Text("Categories",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              SizedBox(width: 200,),
              Text("See All",style: TextStyle(fontSize: 16,color: appPrimaryColor),)
            ],
          ),
          const SizedBox(height: 20,),

          GridView.builder(

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 1,
                  childAspectRatio: 4/5
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                    const CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                  ),
                      const SizedBox(height: 5,),
                      Text(gridText[index])
                    ],
                  );
                }),
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(5)),
              Text("Recommended",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
            ],
          ),
          Padding(padding: const EdgeInsets.all(10),
          child: SizedBox(
              height: 150,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context,int index){
                    return const SizedBox(width: 15,);
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context,int index){
                    return InkWell(
                      onTap: (){
                        print("checkkk${categoriesResponse.data?.productDetail?.productName}");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(color: appPrimaryColor,borderRadius: BorderRadius.circular(5),
                        ),
                      )
                    );
                  }
              )
          ),
          ),
        ],
      ),

      )
    );
  }
}
