import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedualscreen extends StatefulWidget {
  Schedualscreen({super.key});

  @override
  State<Schedualscreen> createState() => _SchedualscreenState();
}

class _SchedualscreenState extends State<Schedualscreen> {
  int _buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Schedule Title
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Schedule",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Buttons
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4f6fa),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0; // Highlight "Upcoming"
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex == 0
                              ? Colors.redAccent
                              : Colors.transparent,
                        ),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 0
                                ? Colors.white
                                : Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1; // Highlight "Completed"
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex == 1
                              ? Colors.redAccent
                              : Colors.transparent,
                        ),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 1
                                ? Colors.white
                                : Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 2; 
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _buttonIndex == 2
                              ? Colors.redAccent
                              : Colors.transparent,
                        ),
                        child: Text(
                          "Canceled",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 2
                                ? Colors.white
                                : Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              upcomingWidget(),
              SizedBox(height: 10,),
              upcomingWidget(),
              SizedBox(height: 10,),
              upcomingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class upcomingWidget extends StatelessWidget {
  const upcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: 
    EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About Doctor",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ]
          ),
          child: SizedBox(
            width:MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text("Dr.Doctor Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/doctor1.jpg"),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(thickness: 1,height: 20,),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month,color: Colors.black54,),
                        SizedBox(width: 5,),
                        Text("10/05/2024",
                        style: TextStyle(
                          color: Colors.black54,
                        ),)
                      ],
                    ),
                     Row(
                      children: [
                        Icon(Icons.access_time_filled,color: Colors.black54,),
                        SizedBox(width: 5,),
                        Text("09:00",
                        style: TextStyle(
                          color: Colors.black54,
                        ),)
                      ],
                    ),
                     Row(
                      children: [
                       Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                       ),
                       SizedBox(width: 5,),
                        Text("Confirmed",
                        style: TextStyle(
                          color: Colors.black54,
                        ),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff4f6fa),
                        ),
                        child: Center(
                          child: Text("Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                        ),
                      ),

                    ),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                          child: Text("Reschedule",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),),
                        ),
                      ),

                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),);
  }
}