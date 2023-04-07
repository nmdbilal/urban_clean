import 'package:flutter/material.dart';
import 'package:urban_clean/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override

  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation>{
  int position = 0;

  List<Widget> pages = [

    const HomePage(),
    const Text("Data"),
    const Text("Profile")

  ];
  @override
  Widget build(BuildContext context){

    return  Scaffold(
      body: pages[position],


      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            label: "Home",

          ),

          BottomNavigationBarItem(icon: Icon(Icons.check_box_outlined),
            label: "",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
            label: "",
          ),


        ],
        currentIndex: position,
        onTap: (index){
          position = index;
          setState(() {

          });
        },
      ),
    );
  }
}
