import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houselay/Hostel/PG_Hostel_Inside.dart';
import 'package:houselay/Hostel/pg__hostal_tabbar.dart';
import 'package:houselay/Hostel/pg_hotel.dart';
import 'package:houselay/Rent/rent_tabbar_page.dart';
import 'package:houselay/co-working/co-working.dart';
import 'package:houselay/co-working/co-working_tababr.dart';
import 'package:houselay/home%20page/search_property_grid_view.dart';

import 'package:houselay/styles/colors.dart';

import 'package:houselay/tabbar_premium_category/tabbar_premium_category.dart';
import 'package:lottie/lottie.dart';

class search_property extends StatefulWidget {
  const search_property({super.key});

  @override
  State<search_property> createState() => _search_propertyState();
}

class _search_propertyState extends State<search_property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteprimarycolor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Flexible(
                        child: Divider(
                          thickness: 2,
                          indent: 10,
                          endIndent: 5,
                          color: Color(0xFFF1F1F1),
                        ),
                      ),
                      Text('Explore',
                          style: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 22,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600)),
                      Flexible(
                          child: Divider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 10,
                        color: Color(0xFFF1F1F1),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 140,
                    child: search_property_grid_view_page(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF9F9FC),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Looking for tenants / buyers?',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 5.0,
                                height: 5.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: lightgreyprimarycolor),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                'Faster & verified tenants / buyers?',
                                style: TextStyle(
                                  color: lightgreyprimarycolor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 5.0,
                                height: 5.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: lightgreyprimarycolor),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                'Post Property Add free',
                                style: TextStyle(
                                  color: lightgreyprimarycolor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xFF17A9FC),
                                Color(0xFF0165E1)
                              ]),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: SizedBox(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // ignore: deprecated_member_use
                                  primary: Colors.transparent,
                                  // ignore: deprecated_member_use
                                  onSurface: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          prtabbar_premium_category_tabbar()));
                                },
                                child: const Text(
                                  'Post My Property',
                                  style: TextStyle(
                                      color: whiteprimarycolor,
                                      fontSize: 15,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/houselay_Banner.png",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 12,
                        left: 10,
                        child: Card(
                          color: whiteprimarycolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 9, bottom: 9, left: 18, right: 18),
                              child: Row(
                                children: [
                                  Text(
                                    'Book Now',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Colors.black, size: 14),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'This Might Help You',
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: Colors.grey.shade100,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.60,
                                        color: Colors.grey.shade300,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      'Find Agent',
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: lightgreyprimarycolor,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/images/house_shifting.png",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  right: 10,
                  child: Card(
                    color: Color(0xFFEBF6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'View',
                              style: TextStyle(
                                color: Color(0xFF0865FF),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Color(0xFF0865FF), size: 14),
                          ],
                        )),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 30,
                  child:
                      Image.asset("assets/images/truck.png", fit: BoxFit.cover),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 221, 220, 220).withOpacity(0.5),
                      blurRadius: 8,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/property.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 20,
                      child: Card(
                        color: Color(0xFFF5F5F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'View',
                                  style: TextStyle(
                                    color: Color(0xFF0865FF),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Color(0xFF0865FF), size: 14),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
