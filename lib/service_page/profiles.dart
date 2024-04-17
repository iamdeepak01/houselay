import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class profiles extends StatefulWidget {
  const profiles({super.key});

  @override
  State<profiles> createState() => _profilesState();
}

class _profilesState extends State<profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.16),
              )
            ], color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11, right: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'similar Profiles',
                          style: TextStyle(
                            color: Color(0xFF585858),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 84,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECF5FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Color(0xFF1B74E4),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 13,
                                color: Color(0xFF1B74E4),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 12,
                                          color: Color.fromRGBO(0, 0, 0, 0.16),
                                        )
                                      ],
                                      color: whiteprimarycolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 24,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF208A3C),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  22),
                                                          topLeft:
                                                              Radius.circular(
                                                                  15))),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "4.5",
                                                    style: const TextStyle(
                                                      fontFamily: "Nunito",
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: whiteprimarycolor,
                                                      height: 15 / 11,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: whiteprimarycolor,
                                                    size: 12,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/naewa.png",
                                                    width: 200,
                                                    // height: 23,
                                                    // fit: BoxFit.contain,
                                                  ),
                                                  Positioned(
                                                    bottom: 1.5,
                                                    left: 20,
                                                    child: Text(
                                                      '2 Km away from Triveni Nagar',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Icon(
                                                Icons.favorite_border,
                                                color: greyprimarycolor,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 18,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Ram singh',
                                                  style: TextStyle(
                                                    color: Color(0xFF484848),
                                                    fontSize: 17,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Image.asset(
                                                  "assets/images/blue_right_logo.png",
                                                  height: 18,
                                                  width: 18,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            //height: 16,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Carpenter',
                                                  style: TextStyle(
                                                    color: Color(0xFF964B00),
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15),
                                                  child: Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Exp - ',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '2 Years',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/location_mark.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Gurjar Ki Thari,',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'jaipur',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/eye_search.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'inspection charge -',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '\u{20B9}${450}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Per day Charge -',
                                                style: TextStyle(
                                                  color: Color(0xFF282828),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '\u{20B9}${800}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '(8 hours)',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Categories :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'wooden Furniture',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                                top: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                                bottom: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Designs :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              top: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              bottom:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'Industrial design',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/call.png",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFECF5FF),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                "assets/images/massege.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 32,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1B74E4),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'View More',
                                              style: TextStyle(
                                                color: whiteprimarycolor,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 30,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 98,
                              width: 98,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE5E5EA),
                                      child: ClipOval(
                                          child: Image.asset(
                                        "assets/images/girls.jpg",
                                        height: 83,
                                        width: 83,
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 35,
                                child: Image.asset(
                                  "assets/images/primium_king.png",
                                  height: 25,
                                  width: 25,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.16),
              )
            ], color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Prime Profiles',
                          style: TextStyle(
                            color: Color(0xFF585858),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 84,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECF5FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Color(0xFF1B74E4),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 13,
                                color: Color(0xFF1B74E4),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 12,
                                          color: Color.fromRGBO(0, 0, 0, 0.16),
                                        )
                                      ],
                                      color: whiteprimarycolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 24,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF208A3C),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  22),
                                                          topLeft:
                                                              Radius.circular(
                                                                  15))),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "4.5",
                                                    style: const TextStyle(
                                                      fontFamily: "Nunito",
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: whiteprimarycolor,
                                                      height: 15 / 11,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: whiteprimarycolor,
                                                    size: 12,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/naewa.png",
                                                    width: 200,
                                                    // height: 23,
                                                    // fit: BoxFit.contain,
                                                  ),
                                                  Positioned(
                                                    bottom: 1.5,
                                                    left: 20,
                                                    child: Text(
                                                      '2 Km away from Triveni Nagar',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Icon(
                                                Icons.favorite_border,
                                                color: greyprimarycolor,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 18,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Ram singh',
                                                  style: TextStyle(
                                                    color: Color(0xFF484848),
                                                    fontSize: 17,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Image.asset(
                                                  "assets/images/blue_right_logo.png",
                                                  height: 18,
                                                  width: 18,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            //height: 16,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Carpenter',
                                                  style: TextStyle(
                                                    color: Color(0xFF964B00),
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15),
                                                  child: Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Exp - ',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '2 Years',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/location_mark.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Gurjar Ki Thari,',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'jaipur',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/eye_search.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'inspection charge -',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '\u{20B9}${450}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Per day Charge -',
                                                style: TextStyle(
                                                  color: Color(0xFF282828),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '\u{20B9}${800}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '(8 hours)',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Categories :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'wooden Furniture',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                                top: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                                bottom: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Designs :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              top: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              bottom:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'Industrial design',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/call.png",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFECF5FF),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                "assets/images/massege.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 32,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1B74E4),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'View More',
                                              style: TextStyle(
                                                color: whiteprimarycolor,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 30,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 98,
                              width: 98,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE5E5EA),
                                      child: ClipOval(
                                          child: Image.asset(
                                        "assets/images/girls.jpg",
                                        height: 83,
                                        width: 83,
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 35,
                                child: Image.asset(
                                  "assets/images/primium_king.png",
                                  height: 25,
                                  width: 25,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.16),
              )
            ], color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended Profiles',
                          style: TextStyle(
                            color: Color(0xFF585858),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 84,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECF5FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Color(0xFF1B74E4),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 13,
                                color: Color(0xFF1B74E4),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 12,
                                          color: Color.fromRGBO(0, 0, 0, 0.16),
                                        )
                                      ],
                                      color: whiteprimarycolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 24,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF208A3C),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  22),
                                                          topLeft:
                                                              Radius.circular(
                                                                  15))),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "4.5",
                                                    style: const TextStyle(
                                                      fontFamily: "Nunito",
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: whiteprimarycolor,
                                                      height: 15 / 11,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: whiteprimarycolor,
                                                    size: 12,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/naewa.png",
                                                    width: 200,
                                                    // height: 23,
                                                    // fit: BoxFit.contain,
                                                  ),
                                                  Positioned(
                                                    bottom: 1.5,
                                                    left: 20,
                                                    child: Text(
                                                      '2 Km away from Triveni Nagar',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF444444),
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Icon(
                                                Icons.favorite_border,
                                                color: greyprimarycolor,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 18,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Ram singh',
                                                  style: TextStyle(
                                                    color: Color(0xFF484848),
                                                    fontSize: 17,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Image.asset(
                                                  "assets/images/blue_right_logo.png",
                                                  height: 18,
                                                  width: 18,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            //height: 16,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Carpenter',
                                                  style: TextStyle(
                                                    color: Color(0xFF964B00),
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15),
                                                  child: Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Exp - ',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '2 Years',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/location_mark.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Gurjar Ki Thari,',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'jaipur',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF4A4A4A),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/eye_search.png",
                                                height: 18,
                                                width: 18,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'inspection charge -',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '\u{20B9}${450}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Per day Charge -',
                                                style: TextStyle(
                                                  color: Color(0xFF282828),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '\u{20B9}${800}',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '(8 hours)',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF282828),
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Categories :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'wooden Furniture',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 28,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 112,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                // left: BorderSide(
                                                //   color: Colors.grey
                                                //       .shade300, // Border color
                                                //   width:
                                                //       2.0, // Border width for the left side
                                                // ),
                                                right: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0.0, // Border width for the right side
                                                ),
                                                top: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                                bottom: BorderSide(
                                                  color: Colors.grey
                                                      .shade300, // Border color
                                                  width:
                                                      0, // Border width for the left side
                                                ),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Designs :',
                                                  style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    color: Color(0xFF282828),
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 30,
                                              // Set your desired height here
                                              child: ListView.builder(
                                                itemCount: 10,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 4),
                                                        child: Container(
                                                          width: 112,
                                                          height: 28,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF9F9FC),
                                                            border: Border(
                                                              top: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              bottom:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0, // Border width for the left side
                                                              ),
                                                              left: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the left side
                                                              ),
                                                              right: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .shade300, // Border color
                                                                width:
                                                                    0.5, // Border width for the right side
                                                              ),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 2,
                                                                      right: 2),
                                                              child: Text(
                                                                'Industrial design',
                                                                style:
                                                                    TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color:
                                                                      greyprimarycolor,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1,
                                        decoration: ShapeDecoration(
                                          color: Colors.grey.shade100,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/call.png",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 31,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFECF5FF),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                "assets/images/massege.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 72,
                                          height: 32,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1B74E4),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignCenter,
                                                color: Color(0xFF1B74E4),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'View More',
                                              style: TextStyle(
                                                color: whiteprimarycolor,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 30,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 98,
                              width: 98,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFE5E5EA),
                                      child: ClipOval(
                                          child: Image.asset(
                                        "assets/images/girls.jpg",
                                        height: 83,
                                        width: 83,
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 35,
                                child: Image.asset(
                                  "assets/images/primium_king.png",
                                  height: 25,
                                  width: 25,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
