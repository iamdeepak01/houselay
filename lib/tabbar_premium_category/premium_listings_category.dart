import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class premium_listings_category extends StatefulWidget {
  const premium_listings_category({super.key});

  @override
  State<premium_listings_category> createState() =>
      _premium_listings_categoryState();
}

class _premium_listings_categoryState extends State<premium_listings_category> {
  final CarouselController slidercontroller = CarouselController();
  final CarouselController _controller = CarouselController();

  int _current = 0;
  List<String> imageList = [
    "assets/images/category_building.png",
    "assets/images/category_building.png",
    "assets/images/category_building.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == 0) {
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
                              child: Row(
                                children: [
                                  Text(
                                    'Filter',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: greyprimarycolor,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.tune,
                                    color: primarycolor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  } else if (index == 1) {
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
                              child: Row(
                                children: [
                                  Text(
                                    'Sort',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: greyprimarycolor,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.swap_vert,
                                    color: primarycolor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  } else {
                    // For other indices, use the same text
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
                              child: Row(
                                children: [
                                  Text(
                                    'Property type',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: greyprimarycolor,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: lightgreyprimarycolor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }
                },
              ),
            ),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 6, right: 6),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: Color.fromARGB(255, 196, 193, 193)
                                  .withOpacity(0.5),
                            )
                          ],
                          color: whiteprimarycolor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Column(
                        children: [
                          CarouselSlider(
                            items: imageList
                                .map(
                                  (item) => Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          height: 280,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Image.asset(
                                                item,
                                                height: 260,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            right: 10,
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: whiteprimarycolor,
                                            )),
                                        Positioned(
                                            top: 10,
                                            left: 0,
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  "assets/images/Exclusive.png",
                                                  width: 80,
                                                  fit: BoxFit.cover,
                                                ),
                                                Positioned(
                                                    top: 3,
                                                    left: 7,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Exclusive',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            )),
                                        Positioned(
                                          bottom: 22,
                                          child: Row(
                                            children: imageList
                                                .asMap()
                                                .entries
                                                .map((entry) {
                                              return GestureDetector(
                                                onTap: () => _controller
                                                    .animateToPage(entry.key),
                                                child: Container(
                                                  width: 20.0,
                                                  height: 4.0,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: (Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .dark
                                                              ? Colors
                                                                  .grey.shade50
                                                              : Colors.white)
                                                          .withOpacity(
                                                              _current ==
                                                                      entry.key
                                                                  ? 0.9
                                                                  : 0.4)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 32,
                                          left: 10,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: ShapeDecoration(
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.46000000834465027),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "RERA",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: Colors.white,
                                                        size: 13,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Container(
                                                decoration: ShapeDecoration(
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.46000000834465027),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Semi-furnished",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 32,
                                          right: 10,
                                          child: Container(
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF208A3C),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
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
                                        ),
                                        Positioned(
                                          bottom: 2,
                                          child: Container(
                                            height: 14,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "2 Km away from Triveni Nagar",
                                                  style: const TextStyle(
                                                    fontFamily: "Nunito",
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                    color: greyprimarycolor,
                                                    height: 15 / 11,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                )
                                .toList(),
                            options: CarouselOptions(
                                viewportFraction: 1,
                                height: 250,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 22,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('₹',
                                            style: TextStyle(
                                              color: greyprimarycolor,
                                              fontSize: 19,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '25 Lakh',
                                                style: TextStyle(
                                                  color: Color(0xFF484848),
                                                  fontSize: 17,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '2 BHK Flat for Rent',
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                                color: Color(0xFF4A4A4A),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' jaipur',
                                              style: TextStyle(
                                                color: Color(0xFF4A4A4A),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/squer_fit.png",
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
                                                  text: '150 sq.ft. 18.9k',
                                                  style: TextStyle(
                                                    color: Color(0xFF565656),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' Sq.ft.',
                                                  style: TextStyle(
                                                    color: Color(0xFF565656),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 13,
                                            width: 1.5,
                                            decoration: BoxDecoration(
                                                color: greyprimarycolor),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Available',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A4A4A),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A4A4A),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ':',
                                                  style: TextStyle(
                                                    color: Color(0xFF565656),
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '',
                                                  style: TextStyle(
                                                    color: Color(0xFF565656),
                                                    fontSize: 9,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '1St Dec.2024',
                                                  style: TextStyle(
                                                    color: Color(0xFF565656),
                                                    fontSize: 11,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFDAD7EB)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'summary :',
                                          style: TextStyle(
                                            color: Color(0xFF4A4A4A),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'This Property is at very prime location Property is at very prime location',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: lightgreyprimarycolor,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFDAD7EB)),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 65.20,
                                            height: 58,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 8.52,
                                                  top: 0,
                                                  child: Container(
                                                    width: 50.68,
                                                    height: 50.68,
                                                    child: Stack(
                                                      children: [
                                                        // Positioned(
                                                        //   left: 0,
                                                        //   top: 0,
                                                        //   child: Container(
                                                        //     width: 64.68,
                                                        //     height: 64.68,
                                                        //     decoration:
                                                        //         ShapeDecoration(
                                                        //       color: Color(
                                                        //           0xFFD9D9D9),
                                                        //       shape:
                                                        //           OvalBorder(),
                                                        //     ),
                                                        //   ),
                                                        // ),
                                                        Positioned(
                                                          child: CircleAvatar(
                                                            radius:
                                                                32, // Image radius
                                                            backgroundImage:
                                                                AssetImage(
                                                              "assets/images/girls.jpg",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 35.86,
                                                  child: Container(
                                                    width: 25.14,
                                                    height: 25.14,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          child: Container(
                                                            width: 25.14,
                                                            height: 25.14,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape:
                                                                  OvalBorder(),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 3.14,
                                                          top: 3.14,
                                                          child: Container(
                                                            width: 18.86,
                                                            height: 18.86,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        18.86,
                                                                    height:
                                                                        18.86,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        image:
                                                                            AssetImage(
                                                                          "assets/images/primium_like.png",
                                                                        ),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                // Positioned(
                                                                //   left: 0,
                                                                //   top: 0,
                                                                //   child:
                                                                //       Container(
                                                                //     width:
                                                                //         18.86,
                                                                //     height:
                                                                //         18.86,
                                                                //     decoration:
                                                                //         BoxDecoration(
                                                                //             color:
                                                                //                 Color(0xFFBC8C36)),
                                                                //   ),
                                                                // ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                height: 13,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'SUNITA JAF',
                                                      style: TextStyle(
                                                        color: primarycolor,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Image.asset(
                                                      "assets/images/blue_right_logo.png",
                                                      height: 16,
                                                      width: 16,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                'Owner',
                                                style: TextStyle(
                                                  color: lightgreyprimarycolor,
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Container(
                                                width: 78,
                                                height: 15,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF8EFDF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Recommended',
                                                    style: TextStyle(
                                                      color: Color(0xFFBC8C36),
                                                      fontSize: 9,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 43.38,
                                            height: 34,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: primarycolor)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7,
                                                  right: 7,
                                                  top: 5,
                                                  bottom: 5),
                                              child: Image.asset(
                                                "assets/images/call.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 75,
                                            height: 36,
                                            decoration: BoxDecoration(
                                                color: primarycolor,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: primarycolor)),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3, right: 3),
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
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ]),
        ),
      ),
    ));
  }
}
