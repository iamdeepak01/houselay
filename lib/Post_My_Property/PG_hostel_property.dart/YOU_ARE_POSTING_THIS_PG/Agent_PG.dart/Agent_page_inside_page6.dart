import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import 'Agent_page_inside_page7.dart';

class Agent_page_inside_page6 extends StatefulWidget {
  const Agent_page_inside_page6({super.key});

  @override
  State<Agent_page_inside_page6> createState() =>
      _Agent_page_inside_page6State();
}

class _Agent_page_inside_page6State extends State<Agent_page_inside_page6> {
  final List<String> namelist = [
    "Veg Only",
    "No Smoking",
    "Drinkig allowed",
    "Veg Only",
    "No Smoking",
    "Drinkig allowed",
    "Veg Only",
    "No Smoking",
    "Drinkig allowed",
    "Veg Only",
    "No Smoking",
    "Drinkig allowed",
  ];
  int selectedIndex = -1;
  final List<String> imagelist = [
    "assets/images/bed_black.png",
    "assets/images/armchair.png",
    "assets/images/office_chair.png",
    "assets/images/bed_black.png",
    "assets/images/armchair.png",
    "assets/images/office_chair.png",
    "assets/images/bed_black.png",
    "assets/images/armchair.png",
    "assets/images/office_chair.png",
    "assets/images/bed_black.png",
    "assets/images/armchair.png",
    "assets/images/office_chair.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Agent_page_inside_page7()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: ShapeDecoration(
              color: primarycolor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF1B74E4),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style: TextStyle(
                      color: whiteprimarycolor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Common Area Amenities",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ListView.builder(
                itemCount: namelist.length,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Update the selected index
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    imagelist[index],
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    namelist[index],
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 238, 238, 238),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 199, 197, 197),
                                        width: 0.70,
                                      ),
                                    ),
                                  ),
                                  if (selectedIndex ==
                                      index) // Show the check mark only for the selected index
                                    Icon(
                                      Icons.check_outlined,
                                      size: 17,
                                      color: primarycolor,
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (index != namelist.length - 1)
                        Divider(), // Add a divider except for the last item
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
