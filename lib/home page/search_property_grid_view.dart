import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houselay/Buy/Buy_tabbar.dart';
import 'package:houselay/Commercial/Commercial_tabbar.dart';
import 'package:houselay/Hostel/pg__hostal_tabbar.dart';
import 'package:houselay/Plot/plot_tabbar_page.dart';
import 'package:houselay/Projects/projects_tabbar.dart';
import 'package:houselay/Rent/rent_tabbar_page.dart';
import 'package:houselay/co-working/co-working_tababr.dart';
import 'package:houselay/co_living/co_living_tabbar.dart';
import 'package:houselay/service_page/profiles.dart';
import 'package:houselay/service_page/viodes.dart';
import 'package:houselay/styles/colors.dart';
import 'package:houselay/tabbar_premium_category/tabbar_premium_category.dart';

class search_property_grid_view_page extends StatefulWidget {
  const search_property_grid_view_page({super.key});

  @override
  State<search_property_grid_view_page> createState() =>
      _search_property_grid_view_pageState();
}

class _search_property_grid_view_pageState
    extends State<search_property_grid_view_page> {
  final List<String> imgList = [
    "assets/images/search_home.png",
    "assets/images/search_home1.png",
    "assets/images/search_home2.png",
    "assets/images/search_home3.png",
    "assets/images/search_home4.png",
    "assets/images/search_home5.png",
    "assets/images/search_home6.png",
    "assets/images/search_home7.png",
    "assets/images/search_home8.png",
    "assets/images/search_home9.png",
  ];

  final List<String> namesList = [
    "Buy",
    "Rent",
    "PG/Hostel",
    "Co-Living",
    "Co-Working",
    "Plot",
    "Project",
    "Commercial",
    "Sell Property",
    "Rent Out"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteprimarycolor,
      body: Container(
        decoration: BoxDecoration(color: whiteprimarycolor),
        height: 130,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: imgList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => buy_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 1) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => rent_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 2) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => pg_hostal_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 3) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => co_living_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 4) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => co_working_tababr_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 5) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => plot_tabar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 6) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => projects_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 7) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => commercial_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (index == 8) {
              // Check if it's the third item
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => co_living_tabbar_page(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VideoGrid(),
                    ));
                  },
                  child: Container(
                    width: 82,
                    height: 91,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220)
                              .withOpacity(0.5),
                          blurRadius: 8,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgList[index], // Use different image for index 2
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          namesList[index], // Use different text for index 2
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey, // Use your color
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
            ///////////////////////////////////////////////////////////
          },
        ),
      ),
    );
  }
}
