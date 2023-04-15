import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:urban_clean/cleaning_page.dart';
import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 var  category ;
  List itemCount = [] ;
 var image;
  @override
  void initState(){
    // ApiProvider().processHome();
setState(() {
  process();

});
    super.initState();
  }
 Future process ()async{
   try{
     final dio = Dio();
     final response = await dio.get('http://52.90.154.44:5001/api/getCategoryList',
     );

     category = response.data as Map;
     itemCount = category["categories"];
     print("billu ${category}");
     print(itemCount);
     print(response.data);
     setState(() {

     });
   }catch(e){
     var error = e as DioError;
     // print((error.response!.data as Map)["errors"][0]["message"]);
     print(error);
   }
 }
  List <String> gridText = ["Cleaning","Laundry","Call Service","Painting","Shipping","Bike Service","Handy Men","More"];
  @override
  Widget build(BuildContext context) {

    print("billla$itemCount");

    return Scaffold(
      body: SafeArea(child:
      // itemCount== null ? CircularProgressIndicator():
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
                itemCount:itemCount.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                   onTap: (){
                     var title = itemCount[index]["sub_categories"];
                     // category["categories"][index]["sub_categories"][index][ "category_name"];
                     // [index]["sub_categories"][index][" category_name"];

                     print("naveen${title}");
                     Navigator.push(context, MaterialPageRoute(builder: (context) => CleaningPage(title),));
                   },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          radius: 30,
                          backgroundImage: NetworkImage("${itemCount[index]["image_bg"]}",),
                        ),

                        const SizedBox(height: 5),
                        Text(itemCount[index]["title"]),
                      ],
                    ),
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
                        // print("check${categoriesResponse.data?.productDetail?.productName}");
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
