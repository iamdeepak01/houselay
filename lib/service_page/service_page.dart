import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:houselay/Hostel/near_by_tabar_hostal/rating_slider.dart';
import 'package:houselay/service_page/profiles.dart';
import 'package:houselay/service_page/viodes.dart';
import 'package:houselay/styles/colors.dart';
import 'package:houselay/Hostel/pg_hotel.dart';

class service_page extends StatefulWidget {
  const service_page({super.key});

  @override
  State<service_page> createState() => _service_pageState();
}

class _service_pageState extends State<service_page> {
  int _current = 0;
  List<String> imageList1 = [
    "assets/images/category_building.png",
    "assets/images/category_building.png",
    "assets/images/category_building.png",
  ];
  TextEditingController numbercontroller = TextEditingController();
  late final _ratingController;
  late double _rating;

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
  List<String> imageList = [
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
    "https://img.freepik.com/free-photo/passport-boarding-pass-handbag_53876-23120.jpg?w=740&t=st=1668585398~exp=1668585998~hmac=1a4b2817b6c52c41f6982d53e6263747989cf22d67533c93ed15392495d7d88a",
  ];
  bool isSignIN = true;
  bool valuefirst = false;
  bool _passwordVisible = false;
  final borderRadius = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primarycolor)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 8, bottom: 8),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/call.png",
                      height: 25,
                      width: 25,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 5,
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
              decoration: BoxDecoration(
                  color: primarycolor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primarycolor)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 17, right: 17, top: 8, bottom: 8),
                child: Image.asset(
                  "assets/images/white_msg.png",
                  height: 25,
                  width: 25,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF21D651),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 11, bottom: 11),
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
                child: Column(
                  children: [
                    Container(
                      height: 280,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/carpenter.png",
                              height: 250,
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
                              left: 20,
                              bottom: 0,
                              child: Container(
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/105x105"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x4C000000),
                                      blurRadius: 5,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: whiteprimarycolor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        0), // Border radius
                                    child: ClipOval(
                                        child: Image.asset(
                                      "assets/images/girls.jpg",
                                    )),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Ram singh',
                                  style: TextStyle(
                                    color: greyprimarycolor,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 49,
                                  height: 14,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE0EEFF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Verified',
                                      style: TextStyle(
                                        color: Color(0xFF1F83F1),
                                        fontSize: 11,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "assets/images/blue_right_logo.png",
                                  height: 18,
                                  width: 18,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            Text(
                              'Carpenter',
                              style: TextStyle(
                                color: Color(0xFF964B00),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/self_employed.png",
                                  height: 18,
                                  width: 18,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Self employed',
                                        style: TextStyle(
                                          color: Color(0xFF4A4A4A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Color(0xFF696969),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(Male)',
                                        style: TextStyle(
                                          color: Color(0xFF696969),
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/Experience.png",
                                  height: 18,
                                  width: 18,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Experience',
                                        style: TextStyle(
                                          color: Color(0xFF4A4A4A),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' -',
                                        style: TextStyle(
                                          color: Color(0xFF525252),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Color(0xFF525252),
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '3 Years',
                                        style: TextStyle(
                                          color: Color(0xFF696969),
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' jaipur',
                                        style: TextStyle(
                                          color: Color(0xFF4A4A4A),
                                          fontSize: 16,
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
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFEF6EE),
                                  // color: Color.fromARGB(255, 240, 239, 236),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 2, right: 10, left: 10),
                                  child: Text(
                                    '2 km away from you / triveni /mahesh nagar',
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
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
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Charges',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //₹
                                        Row(
                                          children: [
                                            Text(
                                              'Inspection charge  - ',
                                              style: TextStyle(
                                                color: Color(0xFF4A4A4A),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '₹',
                                                    style: TextStyle(
                                                      color: Color(0xFF696969),
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '300',
                                                    style: TextStyle(
                                                      color: Color(0xFF696969),
                                                      fontSize: 14,
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

                                        Row(
                                          children: [
                                            Text(
                                              'Per day Charge  -',
                                              style: TextStyle(
                                                color: greyprimarycolor,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '800',
                                                    style: TextStyle(
                                                      color: Color(0xFF696969),
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '(8 Hours)',
                                                    style: TextStyle(
                                                      color: Color(0xFF696969),
                                                      fontSize: 14,
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
                                        Container(
                                          width: 200,
                                          height: 14,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xFFFEF6EE),
                                            // color: Color.fromARGB(255, 240, 239, 236),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'travel charges are excluded/included',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color(0xFF282828),
                                                  fontSize: 9,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                size: 5.0,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Actual service prices based on scope of work and rate card',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .black, // Use your color variable here
                                                    fontSize: 11,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.9,
                                                  ),

                                                  // Adjust as needed
                                                ),
                                              ),
                                            ]),
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
                                                Icons.circle,
                                                size: 5.0,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Materials charges will be additional, if any.',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .black, // Use your color variable here
                                                    fontSize: 11,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.9,
                                                  ),

                                                  // Adjust as needed
                                                ),
                                              )
                                            ]),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF9F9FC),
                                      border: Border(
                                        top: BorderSide(
                                          color: Colors
                                              .grey, // Specify the color of the border
                                          width:
                                              1.0, // Specify the width of the top border
                                        ),
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.check_circle_outline,
                                              size: 12,
                                              color: Color(0xFF006900)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Service provider carries all equipments which are\nneeded in work.',
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Use your color variable here
                                                fontSize: 11,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 1.2,
                                              ),

                                              // Adjust as needed
                                            ),
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'categories',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ), SizedBox(
                            height: 10,
                          ),
                          GridView.builder(padding: EdgeInsets.all(0),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 8,
                              physics: const NeverScrollableScrollPhysics(),
                              //   gridDelegate:
                              //     SliverGridDelegateWithFixedCrossAxisCount(
                              //   crossAxisCount: 2,
                              //   childAspectRatio: MediaQuery.of(context)
                              //           .size
                              //           .width /
                              //       (MediaQuery.of(context).size.height / 10),
                              // ),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 5.4 / 1.1,
                                      crossAxisCount: 2),
                              itemBuilder: ((BuildContext context, int index) {
                                return Row(
                                  children: [
                                    Container(
                                      width: 164,
                                      height: 32,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF9F9FC),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 0.80,
                                              color: Color(0xFFD4D4D4)),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Wooden Furnitures',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: greyprimarycolor,
                                              fontSize: 13,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              })),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 31,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFF1B74E4)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  color: primarycolor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualification',
                          style: TextStyle(
                            color: greyprimarycolor,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'I have completed my degree in carpentery',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'I have certificate in carpentery',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'I have Diploma in carpentery',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Qualification documents are Digitally verified by ',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Houslay',
                                style: TextStyle(
                                  color: Color(0xFF1B74E4),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Brochure',
                          style: TextStyle(
                            color: greyprimarycolor,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 178,
                              height: 138.84,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.31),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Brochure.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x1E000000),
                                    blurRadius: 16.61,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: 1.8,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 3),
                                  child: Text(
                                    '+3 photos',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.49,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      )
                    ],
                    color: whiteprimarycolor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rate card / Prices',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 178,
                                height: 138.84,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.31),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Rate_card _Prices.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x1E000000),
                                      blurRadius: 16.61,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 15,
                                right: 1.8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 3),
                                    child: Text(
                                      '+3 photos',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9.49,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ],
                  color: whiteprimarycolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
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
                      // SizedBox(
                      //   height: 40,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'summary :',
                      //         style: TextStyle(
                      //           color: Color(0xFF4A4A4A),
                      //           fontSize: 14,
                      //           fontFamily: 'Poppins',
                      //           fontWeight: FontWeight.w500,
                      //           height: 0,
                      //         ),
                      //       ),
                      //       Expanded(
                      //         child: Text(
                      //           'I had 6 years experience in the of carpentry.i had a great Knowledge,i had a great Knowledge i know all antique',
                      //           overflow: TextOverflow.ellipsis,
                      //           maxLines: 2,
                      //           style: TextStyle(
                      //             color: lightgreyprimarycolor,
                      //             fontSize: 12,
                      //             fontFamily: 'Poppins',
                      //             fontWeight: FontWeight.w400,
                      //             height: 0,
                      //           ),
                      //         ),
                      //       ),
                      //       IconButton(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.keyboard_arrow_down,
                      //           ))
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                      ),
                      SizedBox(
                        height: 7,
                      ),
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
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Color(0xFFBDDAFF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFD4D4D4)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Is something went wrong with\nthis Profile? Report now.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      )),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 102,
                                        height: 34.44,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF1B74E4),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Report Fraud',
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
                                        width: 10,
                                      ),
                                      Container(
                                        width: 67,
                                        height: 34.44,
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
                                            'No',
                                            style: TextStyle(
                                              color: Color(0xFF1B74E4),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(
                                "assets/images/service_msg.png",
                                height: 94,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0xFFBDDAFF)),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("to know More About it on",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("your experience",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
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
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Rating and reviews',
                                  style: TextStyle(
                                    color: Color(0xFF4E4E4E),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                                TextSpan(
                                  text: ' (Also add report)',
                                  style: TextStyle(
                                    color: Color(0xFF4E4E4E),
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
                            height: 12,
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
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                              height: 110,
                              width: MediaQuery.of(context).size.width,
                              child: rating_slider_page()),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
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
                            height: 10,
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
                                            width: 1, color: Color(0xFF1B74E4)),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 2, left: 5, right: 5),
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
                            height: 10,
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
                            height: 7,
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
                            height: 3,
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
                                        width: 0.50, color: Color(0xFFA5A5A5)),
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
                            height: 7,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),
                          SizedBox(
                            height: 10,
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
                            height: 7,
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
                            height: 3,
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
                                        width: 0.50, color: Color(0xFFA5A5A5)),
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
                            height: 7,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),
                          SizedBox(
                            height: 10,
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
                            height: 7,
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
                            height: 3,
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
                                        width: 0.50, color: Color(0xFFA5A5A5)),
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
                            height: 7,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                          ),
                          SizedBox(
                            height: 7,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 920,
                width: MediaQuery.of(context).size.width,
                child: profiles(),
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
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 53,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFB8B8B8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    DefaultTabController(
                        length: 2, // length of tabs

                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 33,
                                width: 250,
                                child: TabBar(
                                  // labelColor: primarycolor,
                                  // unselectedLabelColor: greyprimarycolor,
                                  // indicatorColor: primarycolor,
                                  //  indicator: BoxDecoration(),
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        'Photos',
                                        style: TextStyle(
                                          color: Color(0xFF1B74E4),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height:
                                              1, // Adjusted to a non-zero value to avoid layout issues
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        'Videos',
                                        style: TextStyle(
                                          color: Color(0xFF1B74E4),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height:
                                              1, // Adjusted to a non-zero value to avoid layout issues
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  //height of TabBarView
                                  height: 450,
                                  child: TabBarView(children: <Widget>[
                                    Container(
                                      child: Center(
                                          child: Column(
                                        children: [ SizedBox(
                height: 10,
              ),
                                          GridView.builder( padding: EdgeInsets.all(0),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 4.0,
                                              mainAxisSpacing: 4.0,
                                            ),
                                            shrinkWrap: true,
                                            itemCount: imageList.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Image.asset(
                                                "assets/images/girls.jpg",
                                                fit: BoxFit.cover,
                                              );
                                            },
                                          )
                                        ],
                                      )),
                                    ),
                                    Container(
                                      child: Center(
                                        child: VideoGrid(),
                                      ),
                                    ),
                                  ]))
                            ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
