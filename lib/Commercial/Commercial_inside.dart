import 'package:carousel_slider/carousel_controller.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:houselay/Commercial/near_by_tabbar_commercial/near_by_tabbar_commercial.dart';
import 'package:houselay/Commercial/near_by_tabbar_commercial/rating_slider_commercial.dart';
import 'package:houselay/styles/colors.dart';

class Commercial_inside_page extends StatefulWidget {
  const Commercial_inside_page({super.key});

  @override
  State<Commercial_inside_page> createState() => _Commercial_inside_pageState();
}

class _Commercial_inside_pageState extends State<Commercial_inside_page> {
  final CarouselController slidercontroller = CarouselController();
  // ignore: unused_field
  final CarouselController _controller = CarouselController();

  int _current = 0;
  List<String> imageList = [
    "assets/images/category_building.png",
    "assets/images/category_building.png",
    "assets/images/category_building.png",
  ];
  TextEditingController numbercontroller = TextEditingController();
  // ignore: unused_field
  late final _ratingController;
  late double _rating;

  // ignore: unused_field
  double _userRating = 3.0;
  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = 2.0; // You can set your initial rating here
  }

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  bool isGuchSelected = true;
  bool isGuruSelected = false;
  bool isThirdSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        )),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 110,
              height: 36,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF1B74E4),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/call.png",
                      height: 25,
                      width: 25,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'call',
                      style: TextStyle(
                        color: primarycolor,
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
            Container(
              width: 72.58,
              height: 36,
              decoration: ShapeDecoration(
                color: Color(0xFF1B74E4),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF1B74E4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/white_msg.png",
                  height: 25,
                  width: 25,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 36,
              width: 110,
              decoration: BoxDecoration(
                color: Color(0xFF21D651),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'interested',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
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
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 350,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/hostel.png",
                                height: 330,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 20,
                              child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black
                                        .withOpacity(0.2800000011920929),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context, false);
                                      },
                                      child: new Icon(
                                        Icons.arrow_back_ios,
                                        color: whiteprimarycolor,
                                        size: 20,
                                      ),
                                    ),
                                  )), //............
                            ),
                            Positioned(
                              right: 10,
                              top: 20,
                              child: Row(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                            .withOpacity(0.2800000011920929),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: new Icon(
                                          Icons.favorite_border,
                                          color: whiteprimarycolor,
                                          size: 20,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                            .withOpacity(0.2800000011920929),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: new Icon(
                                          Icons.ios_share,
                                          color: whiteprimarycolor,
                                          size: 20,
                                        ),
                                      )),
                                ],
                              ), //............
                            ),
                            Positioned(
                              bottom: 50,
                              right: 10,
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFF208A3C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
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
                                          fontWeight: FontWeight.w600,
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
                                bottom: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              10), // Image border
                                          child: SizedBox.fromSize(
                                            // Image radius
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hostel.png",
                                                    width: 75,
                                                    height: 40,
                                                    fit: BoxFit.cover),
                                                Positioned.fill(
                                                    child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    'Facade',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              10), // Image border
                                          child: SizedBox.fromSize(
                                            // Image radius
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hostel.png",
                                                    width: 75,
                                                    height: 40,
                                                    fit: BoxFit.cover),
                                                Positioned.fill(
                                                    child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    'Room',
                                                    style: TextStyle(
                                                      color: whiteprimarycolor,
                                                      fontSize: 11,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              10), // Image border
                                          child: SizedBox.fromSize(
                                            // Image radius
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hostel.png",
                                                    width: 75,
                                                    height: 40,
                                                    fit: BoxFit.cover),
                                                Positioned.fill(
                                                    child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    'Kitchen',
                                                    style: TextStyle(
                                                      color: whiteprimarycolor,
                                                      fontSize: 11,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              10), // Image border
                                          child: SizedBox.fromSize(
                                            // Image radius
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                    "assets/images/hostel.png",
                                                    width: 75,
                                                    height: 40,
                                                    fit: BoxFit.cover),
                                                Positioned.fill(
                                                    //  bottom: 0,
                                                    child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    'Hall',
                                                    style: TextStyle(
                                                      color: whiteprimarycolor,
                                                      fontSize: 11,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isGuchSelected = !isGuchSelected;
                                  isGuruSelected = false;
                                  isThirdSelected = false;
                                });
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.80,
                                        color: isGuchSelected
                                            ? Color(0xFF0861C3)
                                            : greyprimarycolor,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x1E000000),
                                        blurRadius: 14,
                                        offset: Offset(0, 0),
                                        spreadRadius: 0,
                                      )
                                    ],
                                    color: whiteprimarycolor),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/gallery.png",
                                          height: 20,
                                          width: 20,
                                          fit: BoxFit.cover),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Photos',
                                        style: TextStyle(
                                          color: greyprimarycolor,
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 0.20,
                                                color: Color(0xFFBFBFBF)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                            right: 4,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '1/10',
                                              style: TextStyle(
                                                color: greyprimarycolor,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isGuchSelected = false;
                                  isGuruSelected = !isGuruSelected;
                                  isThirdSelected = false;
                                });
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.80,
                                      color: isGuruSelected
                                          ? Color(0xFF0861C3)
                                          : greyprimarycolor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 14,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/camera.png",
                                          height: 20,
                                          width: 20,
                                          fit: BoxFit.cover),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '360 View',
                                        style: TextStyle(
                                          color: greyprimarycolor,
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isGuchSelected = false;
                                  isGuruSelected = false;
                                  isThirdSelected = !isThirdSelected;
                                });
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.80,
                                      color: isThirdSelected
                                          ? Color(0xFF0861C3)
                                          : greyprimarycolor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 14,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.play_circle_outline),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Viodes',
                                        style: TextStyle(
                                          color: greyprimarycolor,
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '₹',
                                            style: TextStyle(
                                              color: Color(0xFF282828),
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '300',
                                            style: TextStyle(
                                              color: Color(0xFF282828),
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'onwards',
                                            style: TextStyle(
                                              color: Color(0xFF282828),
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Container(
                                    //   decoration: ShapeDecoration(
                                    //     color: Colors.red,
                                    //     shape: RoundedRectangleBorder(
                                    //       borderRadius:
                                    //           BorderRadius.circular(50),
                                    //     ),
                                    //   ),
                                    //   child: Align(
                                    //     alignment: Alignment.center,
                                    //     child: Padding(
                                    //       padding: const EdgeInsets.only(
                                    //           right: 15,
                                    //           left: 15,
                                    //           top: 2,
                                    //           bottom: 2),
                                    //       child: Text(
                                    //         '20% off',
                                    //         style: TextStyle(
                                    //           color: Colors.white,
                                    //           fontSize: 10,
                                    //           fontFamily: 'Nunito',
                                    //           fontWeight: FontWeight.w700,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shree ram Boy PG',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 17,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE0EEFF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 6),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Property Verifie",
                                              style: TextStyle(
                                                color: Color(0xFF0861C3),
                                                fontSize: 11,
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
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
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/location_mark.png",
                                              height: 18,
                                              width: 18,
                                              fit: BoxFit.cover,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Gopalpura, ',
                                                    style: TextStyle(
                                                      color: Color(0xFF4A4A4A),
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' jaipur',
                                                    style: TextStyle(
                                                      color: Color(0xFF4A4A4A),
                                                      fontSize: 16,
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
                                          height: 6,
                                        ),
                                        Container(
                                          width: 140,
                                          height: 16,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEDFCFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '2 km away from you',
                                              style: TextStyle(
                                                color: Color(0xFF282828),
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 118,
                                      height: 29,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF1B74E4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/turn.png",
                                              height: 20,
                                              width: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Get directions',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                // Container(
                                //   width: 130,
                                //   decoration: ShapeDecoration(
                                //     color: Color(0xFF0861C3),
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(50),
                                //     ),
                                //   ),
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(5.0),
                                //     child: Row(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.center,
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.center,
                                //       children: [
                                //         Image.asset(
                                //           "assets/images/turn.png",
                                //           height: 20,
                                //           width: 20,
                                //           fit: BoxFit.cover,
                                //         ),
                                //         SizedBox(
                                //           width: 10,
                                //         ),
                                //         Text(
                                //           'Get directions',
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontSize: 11,
                                //             fontFamily: 'Poppins',
                                //             fontWeight: FontWeight.w500,
                                //             height: 0,
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
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
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Availability',
                        style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 28,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF9F9FC),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.80, color: Color(0xFFD4D4D4)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 5),
                                  child: Text(
                                    'Available from 2 May 2024',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Key details',
                        style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Covered Area',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '988 Sqft',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '\u{20B9}${25.0}',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carpet Area',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '700 Sqft',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '700 Sqft',
                                style: TextStyle(
                                  color: whiteprimarycolor,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Society / Colony',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Janta Colony',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'location',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Pratap Nagar',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Possession',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Sept, 2024/Ready\nto shift',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Configuration',
                                style: TextStyle(
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '2 Bedroom,\n2 wash Room',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '1 Balcony',
                                style: TextStyle(
                                  color: Color(0xFF585858),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
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
                decoration: ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  color: whiteprimarycolor,
                  shape: RoundedRectangleBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Additional details',
                        style: TextStyle(
                          color: Color(0xFF4E4E4E),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Facing',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '3 of  10 Floor',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Under contruction',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Car Parking',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1 Covered',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Furnishing',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Un furnished',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Overlooking',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Main Road',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Flowering',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'vitrified',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Landmark',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Fortis hospital',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Age of Property',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '3 Years old',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'type of owership',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Freehold',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Water availability',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '24 Hours',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status of electricity',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'rare power cut',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 0.50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.transparent,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '+3 More',
                              style: TextStyle(
                                color: Color(0xFF0861C3),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  color: whiteprimarycolor,
                  shape: RoundedRectangleBorder(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Private Amenities',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 155,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(),
                                // Adjust the spacing between text and dropdown button
                                DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    hint: Text(
                                      'in Hall / Kitchen',
                                      style: TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    items: items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      height: 30,
                                      width: 150,
                                    ),
                                    menuItemStyleData: const MenuItemStyleData(
                                      height: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  "assets/images/bed.png",
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  left: 0,
                                  bottom: 15,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black
                                          .withOpacity(0.7400000095367432),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 4, top: 3, bottom: 3),
                                      child: Text(
                                        '+3 photos',
                                        style: TextStyle(
                                          color: whiteprimarycolor,
                                          fontSize: 9.49,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 85 / 60,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              crossAxisCount: 3,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 5) {
                                // Return different design or functionality for index 5
                                return Container(
                                    height: 60,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFEEEEEE),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (index == 0) ? 8.0 : 0),
                                        topRight: Radius.circular(
                                            (index == 2) ? 8.0 : 0),
                                        bottomLeft: Radius.circular(
                                            (index == 3) ? 8.0 : 0),
                                        bottomRight: Radius.circular(
                                            (index == 5) ? 8.0 : 0),
                                      ),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+10 More',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1B74E4),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )));
                              } else {
                                // Return default design for other indices
                                return Container(
                                  height: 60,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFEEEEEE),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          (index == 0) ? 8.0 : 0),
                                      topRight: Radius.circular(
                                          (index == 2) ? 8.0 : 0),
                                      bottomLeft: Radius.circular(
                                          (index == 3) ? 8.0 : 0),
                                      bottomRight: Radius.circular(
                                          (index == 5) ? 8.0 : 0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/wifi.png",
                                          height: 25,
                                          width: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          'Wifi',
                                          style: TextStyle(
                                            color: Color(0xFF6C6C6C),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Common area and amenities',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 135,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(),
                                // Adjust the spacing between text and dropdown button
                                DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    hint: Text(
                                      'Amenities',
                                      style: TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    items: items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      height: 30,
                                      width: 130,
                                    ),
                                    menuItemStyleData: const MenuItemStyleData(
                                      height: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  "assets/images/kitchen.png",
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  left: 0,
                                  bottom: 15,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black
                                          .withOpacity(0.7400000095367432),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 4, top: 3, bottom: 3),
                                      child: Text(
                                        '+3 photos',
                                        style: TextStyle(
                                          color: whiteprimarycolor,
                                          fontSize: 9.49,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 9,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 85 / 60,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              crossAxisCount: 3,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 8) {
                                // Return different design or functionality for index 5
                                return Container(
                                    height: 60,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFEEEEEE),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (index == 0) ? 8.0 : 0),
                                        topRight: Radius.circular(
                                            (index == 2) ? 8.0 : 0),
                                        bottomLeft: Radius.circular(
                                            (index == 6) ? 8.0 : 0),
                                        bottomRight: Radius.circular(
                                            (index == 8) ? 8.0 : 0),
                                      ),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+10 More',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1B74E4),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )));
                              } else {
                                // Return default design for other indices
                                return Container(
                                  height: 60,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFEEEEEE),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          (index == 0) ? 8.0 : 0),
                                      topRight: Radius.circular(
                                          (index == 2) ? 8.0 : 0),
                                      bottomLeft: Radius.circular(
                                          (index == 6) ? 8.0 : 0),
                                      bottomRight: Radius.circular(
                                          (index == 8) ? 8.0 : 0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/wifi.png",
                                          height: 25,
                                          width: 25,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          'Wifi',
                                          style: TextStyle(
                                            color: Color(0xFF6C6C6C),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                            },
                          ),  SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Other Chargers',
                            style: TextStyle(
                              color: Color(0xFF4E4E4E),
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              crossAxisCount: 3,
                              childAspectRatio: 85 / 60,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 85,
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFEEEEEE),
                                    width: 0.4,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular((index == 0) ? 8.0 : 0),
                                    topRight:
                                        Radius.circular((index == 2) ? 8.0 : 0),
                                    bottomLeft:
                                        Radius.circular((index == 0) ? 8.0 : 0),
                                    bottomRight:
                                        Radius.circular((index == 2) ? 8.0 : 0),
                                  ), // Fixed border radius for all containers
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/wallet.png",
                                        height: 25,
                                        width: 25,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Deposit Amount',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        '5,000',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFD4D4D4)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Registered by',
                                            style: TextStyle(
                                              color: Color(0xFF585858),
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFF006900),
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'local Government Registrationy',
                                                style: TextStyle(
                                                  color: Color(0xFF585858),
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              )
                                            ],
                                          ),SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFF006900),
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'Local development Authority',
                                                style: TextStyle(
                                                  color: Color(0xFF585858),
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              )
                                            ],
                                          ),SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.cancel_outlined,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'Society registration',
                                                style: TextStyle(
                                                  color: Color(0xFF585858),
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              )
                                            ],
                                          ),SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFF006900),
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'Police Verification',
                                                style: TextStyle(
                                                  color: Color(0xFF585858),
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              )
                                            ],
                                          ),SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Color(0xFF006900),
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                'Notary public registration',
                                                style: TextStyle(
                                                  color: Color(0xFF585858),
                                                  fontSize: 11,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFDAD7EB)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'RERA ID :',
                                              style: TextStyle(
                                                color: Color(0xFF585858),
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' AFGM16160000155RJ',
                                              style: TextStyle(
                                                color: Color(0xFF6C6C6C),
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ])),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),SizedBox(
                                            height: 3,
                                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Summary : ',
                                  style: TextStyle(
                                    color: Color(0xFF696969),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'I had 6 years experience in the field of carpentry. I had a great knowledge in carpentry; I know all antique. ',
                                  style: TextStyle(
                                    color: Color(0xFF696969),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 0), // Adjust as needed
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 15,
                                      color: Color(
                                          0xFF696969), // Adjust color as needed
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         SizedBox(
                                            height: 3,
                                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFFBDDAFF),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFD4D4D4)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 4, right: 4, top: 12, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Has this Owner Provided\nthe Correct Information ?',
                                        style: TextStyle(
                                          color: Color(0xFF252525),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 75,
                                            height: 35,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF1B74E4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Not Really',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: 67,
                                            height: 35,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFF1B74E4)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                    color: Color(0xFF1B74E4),
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/home_blue.png",
                                    height: 75,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Explore Neighbourhood',
                            style: TextStyle(
                              color: Color(0xFF585858),
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 185,
                            width: MediaQuery.of(context).size.width,
                            decoration: ShapeDecoration(
                              color: lightgreyprimarycolor,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFD4D4D4)),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'What’s nearby',
                            style: TextStyle(
                              color: Color(0xFF585858),
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                              height: 140,
                              width: MediaQuery.of(context).size.width,
                              child: near_by_tabbar_commercial_page()),
                        ],
                      ),
                    ),SizedBox(
                            height: 10,
                          ),
                    //////////////////////////////////////
                    Container(
                      decoration: BoxDecoration(color: Color(0xFFBDDAFF)),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                     padding: const EdgeInsets.only(
                          left: 6,
                          right: 6,
                          top: 12,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rate the PG to help other",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("to know More About it on",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("your experience",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  width: 90,
                                  height: 35,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF1B74E4),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9)),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Rate Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              "assets/images/msg.png",
                              height: 94,
                              width: 104,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                     Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rating and reviews',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: _rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 28.0,
                                      itemBuilder: (context, _) => Icon(
                                        _selectedIcon ?? Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        setState(() {
                                          _rating = rating;
                                        });
                                      },
                                      updateOnDrag: true,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Excellent',
                                      style: TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    // Text(
                                    //   'Rating: $_rating',
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.bold,
                                    //       fontSize: 2.0),
                                    // ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '$_rating',
                                      style: TextStyle(
                                        color: Color(0xFF1B74E4),
                                        fontSize: 25,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '30 Ratings',
                                      style: TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            SizedBox(
                                height: 110,
                                width: MediaQuery.of(context).size.width,
                                child: rating_slider_commercial_page()),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Have a question? Ask advertiser directly',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Get a quick answer right here on the Houslay Forum.',
                              style: TextStyle(
                                color: Color(0xFF6C6C6C),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 42,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFC3C3C3)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(color: Colors.black),
                                controller: numbercontroller,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: 'Type your questions here',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF9A9A9A),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 0.1, color: Color(0xFFC3C3C3)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 0.1, color: Color(0xFFC3C3C3)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 0.1, color: Color(0xFFC3C3C3)),
                                    ),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        width: 80,
                                        height: 35,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF1B74E4),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Ask Now',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                                // ignore: body_might_complete_normally_nullable
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter This 10 Digit Number ';
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            SizedBox(
                              height: 28,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF1B74E4)),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2,
                                            bottom: 2,
                                            left: 5,
                                            right: 5),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Price negotiable?',
                                            style: TextStyle(
                                              color: Color(0xFF1B74E4),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Q: ",
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Any restrictions for visitors?',
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'A: ',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'No Restrictions',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/like.png",
                                  height: 17,
                                  width: 17,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '1 Like | ',
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE5F0FF),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA5A5A5)),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Owner',
                                      style: TextStyle(
                                        color: Color(0xFF6C6C6C),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Rushy Den - ',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '4 Days ago',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Q: ",
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Any restrictions for visitors?',
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'A: ',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'No Restrictions',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/like.png",
                                  height: 17,
                                  width: 17,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '1 Like | ',
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE5F0FF),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA5A5A5)),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Owner',
                                      style: TextStyle(
                                        color: Color(0xFF6C6C6C),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Rushy Den - ',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '4 Days ago',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Q: ",
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Any restrictions for visitors?',
                                    style: TextStyle(
                                      color: Color(0xFF585858),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'A: ',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'No Restrictions',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/like.png",
                                  height: 17,
                                  width: 17,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '1 Like | ',
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  height: 15,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE5F0FF),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA5A5A5)),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Owner',
                                      style: TextStyle(
                                        color: Color(0xFF6C6C6C),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Rushy Den - ',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '4 Days ago',
                                        style: TextStyle(
                                          color: Color(0xFF6C6C6C),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              height: 35,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFF1B74E4)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'View 10+ Answered Questions',
                                  style: TextStyle(
                                    color: Color(0xFF1B74E4),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 14,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Looking to Rent your PG in jaipur ?',
                                        style: TextStyle(
                                          color: Color(0xFF4E4E4E),
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline,
                                            color: Color(0xFF006900),
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'Connect directly with the genuine tenants',
                                            style: TextStyle(
                                              color: Color(0xFF585858),
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline,
                                            color: Color(0xFF006900),
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'Rent your property without any brokerage',
                                            style: TextStyle(
                                              color: Color(0xFF585858),
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 111,
                                          height: 35,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1B74E4),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Post Free Ad",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0.16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Posted By',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                    color: primarycolor,
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
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
                                              color: lightgreyprimarycolor,
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Posted 7 Days Ago',
                                            style: TextStyle(
                                              color: lightgreyprimarycolor,
                                              fontSize: 9,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 167,
                                  height: 42.23,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF20D551),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Still want to know more About',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'this Property via WhatsApp ?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
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
                              height: 6,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDAD7EB)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'More Properties posted by ',
                                    style: TextStyle(
                                      color: Color(0xFF6C6C6C),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Rushy Den',
                                    style: TextStyle(
                                      color: Color(0xFF1B74E4),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 278,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Container(
                                      width: 214,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [
                                            Colors.white,
                                            Color.fromARGB(248, 248, 248, 248)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 221, 220, 220)
                                                .withOpacity(0.5),
                                            blurRadius: 8,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      // decoration: BoxDecoration(
                                      //     boxShadow: [
                                      //       BoxShadow(
                                      //         blurRadius: 10,
                                      //         color: Color.fromARGB(
                                      //                 255, 226, 226, 226)
                                      //             .withOpacity(0.5),
                                      //       )
                                      //     ],
                                      //     // color: Color.fromARGB(
                                      //     //         255, 252, 252, 252)
                                      //     //     .withOpacity(0.8799999952316284),
                                      //     color: Color.fromARGB(
                                      //         245, 245, 245, 245),
                                      //     borderRadius: BorderRadius.only(
                                      //         topLeft: Radius.circular(10),
                                      //         topRight: Radius.circular(10),
                                      //         bottomRight: Radius.circular(10),
                                      //         bottomLeft: Radius.circular(10))),
                                      child: Column(children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Image.asset(
                                                  "assets/images/category_building.png",
                                                  height: 176,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                bottom: 30,
                                                left: 10,
                                                child: Container(
                                                  width: 65.72,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.25),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.44),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Semi-furnished',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 7.94,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Positioned(
                                                bottom: 30,
                                                right: 10,
                                                child: Container(
                                                  width: 23.17,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1F8A3C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.83),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 7.35,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star_outlined,
                                                        color:
                                                            whiteprimarycolor,
                                                        size: 8,
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Month',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/location_mark.png",
                                                    height: 20,
                                                    width: 20,
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
                                                              'Gurjar Ki Thari,',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' jaipur',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/squer_fit.png",
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '1400',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' Sq.ft.',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Similar Properties',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 276,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Container(
                                      width: 214,
                                      height: 275,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [
                                            Colors.white,
                                            Color.fromARGB(248, 248, 248, 248)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 221, 220, 220)
                                                .withOpacity(0.5),
                                            blurRadius: 8,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Column(children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Image.asset(
                                                  "assets/images/category_building.png",
                                                  height: 176,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                bottom: 30,
                                                left: 10,
                                                child: Container(
                                                  width: 65.72,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.25),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.44),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Semi-furnished',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 7.94,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Positioned(
                                                bottom: 30,
                                                right: 10,
                                                child: Container(
                                                  width: 23.17,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1F8A3C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.83),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 7.35,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star_outlined,
                                                        color:
                                                            whiteprimarycolor,
                                                        size: 8,
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Month',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/location_mark.png",
                                                    height: 20,
                                                    width: 20,
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
                                                              'Gurjar Ki Thari,',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' jaipur',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/squer_fit.png",
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '1400',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' Sq.ft.',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Recommended Properties',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 276,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: Container(
                                      width: 214,
                                      height: 275,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [
                                            Colors.white,
                                            Color.fromARGB(248, 248, 248, 248)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 221, 220, 220)
                                                .withOpacity(0.5),
                                            blurRadius: 8,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Column(children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Image.asset(
                                                  "assets/images/category_building.png",
                                                  height: 176,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                bottom: 30,
                                                left: 10,
                                                child: Container(
                                                  width: 65.72,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.25),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.44),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Semi-furnished',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 7.94,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Positioned(
                                                bottom: 30,
                                                right: 10,
                                                child: Container(
                                                  width: 23.17,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1F8A3C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.83),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 7.35,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star_outlined,
                                                        color:
                                                            whiteprimarycolor,
                                                        size: 8,
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Month',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/location_mark.png",
                                                    height: 20,
                                                    width: 20,
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
                                                              'Gurjar Ki Thari,',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' jaipur',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/squer_fit.png",
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '1400',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' Sq.ft.',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Exclusive Properties',
                              style: TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 276,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: Container(
                                      width: 214,
                                      height: 275,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [
                                            Colors.white,
                                            Color.fromARGB(248, 248, 248, 248)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadows: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 221, 220, 220)
                                                .withOpacity(0.5),
                                            blurRadius: 8,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Column(children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Image.asset(
                                                  "assets/images/category_building.png",
                                                  height: 176,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                bottom: 30,
                                                left: 10,
                                                child: Container(
                                                  width: 65.72,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.25),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.44),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Semi-furnished',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 7.94,
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Positioned(
                                                bottom: 30,
                                                right: 10,
                                                child: Container(
                                                  width: 23.17,
                                                  height: 13,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1F8A3C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.83),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 7.35,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star_outlined,
                                                        color:
                                                            whiteprimarycolor,
                                                        size: 8,
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: TextStyle(
                                                        color: greyprimarycolor,
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Month',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/location_mark.png",
                                                    height: 20,
                                                    width: 20,
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
                                                              'Gurjar Ki Thari,',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' jaipur',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 0,
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
                                                children: [
                                                  Image.asset(
                                                    "assets/images/squer_fit.png",
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '1400',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' Sq.ft.',
                                                          style: TextStyle(
                                                            color:
                                                                greyprimarycolor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                
                  ],
                ),
              ),

              //////////////////////////////////////////////////////////////////////////////////////////////
          
              SizedBox(
                height: 25,
              ),
              /////////////////////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
