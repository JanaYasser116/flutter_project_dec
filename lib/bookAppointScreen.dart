import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookappointscreen extends StatelessWidget {
  const Bookappointscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/doctor1.jpg"),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Dr.Doctor Name",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Surgeon",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 0.5,
                          )
                        ]),
                    child: Icon(
                      Icons.call,
                      color: Colors.redAccent,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 0.5,
                          )
                        ]),
                    child: Icon(
                      Icons.videocam,
                      color: Colors.redAccent,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: .5,
                          )
                        ]),
                    child: Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      color: Colors.redAccent,
                      size: 25,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 15,
              )),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Booking Date",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                          decoration: BoxDecoration(
                              color:
                                  index == 1 ? Colors.redAccent : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${index + 8}",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: index == 1
                                        ? Colors.white
                                        : Colors.black.withOpacity(0.6)),
                              ),
                              Text(
                                "May",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: index == 1
                                      ? Colors.white
                                      : Colors.black.withOpacity(0.6),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Booking Time",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 25),
                          decoration: BoxDecoration(
                              color:
                                  index == 2 ? Colors.redAccent : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${index + 8} :00 PM",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: index == 2
                                        ? Colors.white
                                        : Colors.black.withOpacity(0.6)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ])),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4,
            spreadRadius: 1,
          )
        ]),
        child: 
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18),
                width: MediaQuery.of(context).size.width ,
                
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text("Book Now",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
              ),
            
        ),
      ),
    );
  }
}
