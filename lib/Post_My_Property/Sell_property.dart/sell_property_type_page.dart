import 'dart:math';
import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/Commercial_sell_property_type.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/Residential_sell_property_type.dart';
import 'package:houselay/styles/colors.dart';

class sell_property_page extends StatefulWidget {
  const sell_property_page({Key? key});

  @override
  State<sell_property_page> createState() => _sell_property_pagePageState();
}

class _sell_property_pagePageState extends State<sell_property_page> {
  bool showButton1Content = true;
  bool isGuchSelected = true;
  bool isGuruSelected = false;

  Widget buildSelectionContainer({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    Color containerColor =
        isSelected ? Color.fromARGB(255, 200, 220, 241) : Colors.white;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 160,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.80,
              color: isSelected ? Colors.blue : greyprimarycolor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),

          color: containerColor, // Change color here
        ),
        //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: isSelected
                  ? Colors.black
                  : greyprimarycolor, // Change text color here
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What type property is it?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // setState(() {
                          //   showButton1Content = true;
                          // });
                        },
                        child: buildSelectionContainer(
                          text: 'Residential',
                          isSelected: isGuchSelected,
                          onTap: () {
                            setState(() {
                              showButton1Content = true;
                              isGuchSelected = true;
                              isGuruSelected = false;
                            });
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Show Button 2 content
                          // setState(() {
                          //   showButton1Content = false;
                          // });
                        },
                        child: buildSelectionContainer(
                          text: 'Commercial',
                          isSelected: isGuruSelected,
                          onTap: () {
                            setState(() {
                              showButton1Content = false;
                              isGuchSelected = false;
                              isGuruSelected = true;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Looking to",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            if (showButton1Content) Button1Content() else Button2Content(),
          ],
        ),
      ),
    );
  }
}

class Button1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Residential_sell_property_type_page()],
      ),
    );
  }
}

// Content for Button 2
class Button2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Commercial_sell_property_type_page()],
      ),
    );
  }
}
