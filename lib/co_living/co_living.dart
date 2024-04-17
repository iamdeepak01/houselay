import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:houselay/co_living/co_living_inside.dart';
import 'package:houselay/styles/colors.dart';

class co_living_page extends StatefulWidget {
  const co_living_page({super.key});

  @override
  State<co_living_page> createState() => _co_living_pageState();
}

class _co_living_pageState extends State<co_living_page> {
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
            SizedBox(
              height: 7,
            ),
           Padding(
                    padding:
                        const EdgeInsets.only( left: 5, right: 3),
                    child: Container(  
              width: MediaQuery.of(context).size.width,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
            ),), SizedBox(
              height: 12,
            ),
            ListView.builder(
                itemCount: 5,padding: EdgeInsets.all(0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 20, left: 6, right: 6),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => co_living_inside_page(),
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
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
                                            left: 10,
                                            child: Container(
                                              decoration: ShapeDecoration(
                                                color: Colors.black.withOpacity(
                                                    0.46000000834465027),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4,
                                                    right: 4,
                                                    top: 2,
                                                    bottom: 2),
                                                child: SizedBox(
                                                  height: 15,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Verified",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 11,
                                                          fontFamily: 'Nunito',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 3,
                                                      ),
                                                      Image.asset(
                                                        "assets/images/blue_right_logo.png",
                                                        height: 20,
                                                        width: 20,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
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
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 5,
                                                            horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: (Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Colors.grey
                                                                    .shade50
                                                                : Colors.white)
                                                            .withOpacity(
                                                                _current ==
                                                                        entry
                                                                            .key
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
                                                    color: Color(0xFF0861C3)
                                                        .withOpacity(0.5),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7,
                                                        right: 7,
                                                        top: 3,
                                                        bottom: 3),
                                                    child: Text(
                                                      "10% off",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Container(
                                                  width: 68,
                                                  height: 18,
                                                  decoration: ShapeDecoration(
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment(1.00, 0.00),
                                                      end: Alignment(-1, 0),
                                                      colors: [
                                                        Color(0xFFFF8C8C),
                                                        Color(0xFFBB6612)
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Boys",
                                                      style: const TextStyle(
                                                        fontFamily: "Nunito",
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            whiteprimarycolor,
                                                      ),
                                                    ),
                                                  ),
                                                )
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
                                                        color:
                                                            whiteprimarycolor,
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: greyprimarycolor,
                                                      height: 15 / 11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                  padding: const EdgeInsets.all(7),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 22,
                                        child: Row(
                                          children: [
                                            Text('₹',
                                                style: TextStyle(
                                                  color: greyprimarycolor,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '12000/',
                                                    style: TextStyle(
                                                      color: greyprimarycolor,
                                                      fontSize: 17,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Month',
                                                    style: TextStyle(
                                                      color: greyprimarycolor,
                                                      fontSize: 10,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'Shree shyam boys PG',
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 13,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
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
                                      SizedBox(
                                        //  height: 120,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 1,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                            SizedBox(
                                              height: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Private Room',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 11,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text('₹',
                                                            style: TextStyle(
                                                              color:
                                                                  greyprimarycolor,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            )),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '12000 /',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF282828),
                                                                  fontSize: 11,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Month',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF5B5B5B),
                                                                  fontSize: 9,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 0.7,
                                                  height: 37,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFC5C5C5)),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Double Sharing',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 11,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text('₹',
                                                            style: TextStyle(
                                                              color:
                                                                  greyprimarycolor,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            )),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '12000 /',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF282828),
                                                                  fontSize: 11,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Month',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF5B5B5B),
                                                                  fontSize: 9,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 0.7,
                                                  height: 37,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFC5C5C5)),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Triple Sharing',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 11,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text('₹',
                                                            style: TextStyle(
                                                              color:
                                                                  greyprimarycolor,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            )),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '12000 /',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF282828),
                                                                  fontSize: 11,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'Month',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF5B5B5B),
                                                                  fontSize: 9,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 0.7,
                                                  height: 37,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          lightgreyprimarycolor),
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: primarycolor,
                                                    size: 19,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.cancel_outlined,
                                                        color: Colors.red,
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'AC',
                                                        style: TextStyle(
                                                          color:
                                                              greyprimarycolor,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFC5C5C5)),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color:
                                                            Color(0xFF006900),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'FOOD',
                                                        style: TextStyle(
                                                          color:
                                                              greyprimarycolor,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFC5C5C5)),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color:
                                                            Color(0xFF006900),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'WIFI',
                                                        style: TextStyle(
                                                          color:
                                                              greyprimarycolor,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFC5C5C5)),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color:
                                                            Color(0xFF006900),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'Housekeeping',
                                                        style: TextStyle(
                                                          color:
                                                              greyprimarycolor,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 1,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFC5C5C5)),
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: primarycolor,
                                                      size: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                            SizedBox(
                                              height: 24,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'summary :',
                                                    style: TextStyle(
                                                      color: Color(0xFF4A4A4A),
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'This Property is at very prime location',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color:
                                                            lightgreyprimarycolor,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            //  Container(
                                            //   child: Row(
                                            //     children: [
                                            //       Flexible(
                                            //         child: RichText(
                                            //           text: TextSpan(children: [
                                            //             TextSpan(
                                            //               text: 'summary : ',
                                            //               style: TextStyle(
                                            //                 color: Color(
                                            //                     0xFF4A4A4A),
                                            //                 fontSize: 14,
                                            //                 fontFamily:
                                            //                     'Poppins',
                                            //                 fontWeight:
                                            //                     FontWeight.w500,
                                            //               ),
                                            //             ),
                                            //             TextSpan(
                                            //               text:
                                            //                   'This Property is at very prime location',
                                            //               style: TextStyle(
                                            //                 overflow:
                                            //                     TextOverflow
                                            //                         .ellipsis,
                                            //                 color:
                                            //                     lightgreyprimarycolor,
                                            //                 fontSize: 12,
                                            //                 fontFamily:
                                            //                     'Poppins',
                                            //                 fontWeight:
                                            //                     FontWeight.w400,
                                            //               ),
                                            //             ),
                                            //             WidgetSpan(
                                            //               child: Icon(
                                            //                 Icons.add,
                                            //                 size:
                                            //                     16, // Adjust the size as needed
                                            //                 color: Colors.black,
                                            //               ),
                                            //             ),
                                            //           ]),
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 1,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFDAD7EB)),
                                            ),
                                          ],
                                        ),
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
                                              CircleAvatar(
                                                radius: 25, // Image radius
                                                backgroundImage: AssetImage(
                                                  "assets/images/girls.jpg",
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              SizedBox(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 15,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'SUNITA JAF',
                                                            style: TextStyle(
                                                              color:
                                                                  primarycolor,
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          Image.asset(
                                                            "assets/images/blue_right_logo.png",
                                                            height: 22,
                                                            width: 22,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      'Owner',
                                                      style: TextStyle(
                                                        color:
                                                            lightgreyprimarycolor,
                                                        fontSize: 11,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Posted 7 Days Ago',
                                                      style: TextStyle(
                                                        color:
                                                            lightgreyprimarycolor,
                                                        fontSize: 9,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
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
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: primarycolor)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5,
                                                          bottom: 5),
                                                  child: Image.asset(
                                                    "assets/images/call.png",
                                                    height: 22,
                                                    width: 22,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: 66,
                                                height: 34,
                                                decoration: BoxDecoration(
                                                    color: primarycolor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: primarycolor)),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'View More',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11,
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
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
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
