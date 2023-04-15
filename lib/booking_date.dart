import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'constants/colors.dart';

class BookingDate extends StatefulWidget {
  const BookingDate({Key? key}) : super(key: key);

  @override
  State<BookingDate> createState() => _BookingDateState();
}

class _BookingDateState extends State<BookingDate> {
  DateTime today = DateTime.now();
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
        title: Text(
          "Booking Date",style: TextStyle(fontWeight: FontWeight.w500,color: blackColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.all(25),
          child: Card(
              child: TableCalendar(
                rowHeight: 28,
                focusedDay: today,
                firstDay: DateTime.utc(2010, 09, 15),
                lastDay:  DateTime.utc(2030, 09, 15),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(35),
          child: Row(
            children: [
              Text("Morning"),
              SizedBox(width: 60,),
              Text("Afternoon"),
              SizedBox(width: 60,),
              Text("Evening")
            ],
          )
         ),
          Padding(padding: EdgeInsets.all(15),
          child: Card(
            child: Padding(padding: EdgeInsets.all(20),
            child:Column(
              children: [
                Row(
                  children: [
                    Text("7:00 am"),
                    SizedBox(width: 60,),
                    Text("8:00 am"),
                    SizedBox(width: 60,),
                    Text("9:00 am")
                  ],
                ),
                // SizedBox(height: 30),
                Padding(padding: EdgeInsets.all(10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined,textDirection: TextDirection.rtl),
                    Icon(Icons.arrow_forward_ios_outlined,textDirection: TextDirection.ltr),
                  ],
                ),
                ),

                Row(
                  children: [
                    Text("10:00 am"),
                    SizedBox(width: 50,),
                    Text("11:00 am"),
                    SizedBox(width: 50),
                    Text("12:00 am")
                  ],
                )
              ],
            )
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
    );
  }
}
