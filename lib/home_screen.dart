import 'package:flutter/material.dart';
import 'package:flutter_doctor_proj/doctorScreen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List catName = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ears",
  ];
  List<Icon> catIcon = [
    Icon(
      MdiIcons.toothOutline,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: Colors.redAccent,
      size: 30,
    ),
  ];
  List imgs = [
    "assets/doctor1.jpg",
    "assets/doctor2.jpg",
    "assets/doctor3.jpg",
    "assets/doctor4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 10),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/doctor1.jpg"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Hi,Programmer",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xfff2f8ff),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.redAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 2)
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here....",
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Symptoms",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 110,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: catName.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ]),
                                    child: Center(
                                      child: catIcon[index],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    catName[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Our Best Doctors",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    Container(
                      height: 340,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: imgs.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 300,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Doctorscreen()));
                                            },
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Image.asset(
                                                imgs[index],
                                                height: 180,
                                                width: 200,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              margin: EdgeInsets.all(8),
                                              height: 45,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                    blurRadius: 3,
                                                    spreadRadius: 2,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.redAccent,
                                                  size: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dr. Doctor Name",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                              Text(
                                                "Surgeon",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                    size: 25,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "4.9",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
