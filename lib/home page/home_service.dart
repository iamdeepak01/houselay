import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houselay/service_page/service_page.dart';

import 'package:houselay/styles/colors.dart';

class home_service extends StatefulWidget {
  const home_service({super.key});

  @override
  State<home_service> createState() => _home_serviceState();
}

class _home_serviceState extends State<home_service> {
  final List<String> imgList = [
    "assets/images/flash.png",
    "assets/images/Plumber.png",
    "assets/images/Carpenter_home.png",
    "assets/images/Painter.png",
    "assets/images/Interior.png",
    "assets/images/Floor.png",
    "assets/images/Architecture.png",
    "assets/images/home_view.png",
  ];
  // final List<String> imgList1 = [
  //   "assets/images/microwave.png",
  //   "assets/images/tv.png",
  //   "assets/images/refrigerator.png",
  //   "assets/images/air.png",
  //   "assets/images/geyser.png",
  //   "assets/images/chimeny.png",
  //   "assets/images/water.png",
  //   "assets/images/washing.png",
  // ];
  final List<String> namesList = [
    "Electrician",
    "Plumber",
    "Carpenter",
    "Painter",
    "Interior House Design",
    "Floor work /tile setter",
    "Architecture"
        "View all"
  ];
  // final List<String> namesList1 = [
  //   "Microwave",
  //   "Television",
  //   "Refrigerator",
  //   "Air Condition",
  //   "Geyser",
  //   "Chimney",
  //   "Water Purifier"
  //       "Washing Machine"
  // ];
  final List<String> imgList1 = [
    "assets/images/microwave.png",
    "assets/images/tv.png",
    "assets/images/refrigerator.png",
    "assets/images/air.png",
    "assets/images/geyser.png",
    "assets/images/chimeny.png",
    "assets/images/water.png",
    "assets/images/washing.png",
  ];

  final List<String> namesList1 = [
    "Microwave",
    "Television",
    "Refrigerator",
    "Air Condition",
    "Geyser",
    "Chimney",
    "Water Purifier",
    "Washing Machine",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteprimarycolor,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
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
                  GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: imgList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 7) {
                        // For the 8th item
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => service_page(),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF7F7F7),
                                ),
                                child: CircleAvatar(
                                  radius: 28,
                                  child: Image.asset(
                                    "assets/images/home_view.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "View all",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1B74E4),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      } else {
                        // For the first 7 items
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => service_page(),
                                ));
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF7F7F7),
                                ),
                                child: CircleAvatar(
                                  radius: 28,
                                  child: Image.asset(
                                    imgList[index],
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              namesList[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'professional’s looking for work',
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
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'To join ',
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'houslay',
                                      style: TextStyle(
                                        color: primarycolor,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ', create your profile.',
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
                              )
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
                                'Earn more with your professional home services.',
                                style: TextStyle(
                                  color: lightgreyprimarycolor,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )
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
                                onPressed: () {},
                                child: const Text(
                                  'Become A Service Partner',
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Color(0xFFF8F8F8),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Appliance Repair & More',
                              style: TextStyle(
                                color: lightgreyprimarycolor,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Servicing repair Installation & Uninstallation',
                              style: TextStyle(
                                color: lightgreyprimarycolor,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Card(
                          color: Color(0xFFEEEEEE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Text(
                                  'View',
                                  style: TextStyle(
                                    color: Color(0xFF1B74E4),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Color(0xFF1B74E4), size: 15),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/home_service_grid_view.png",
                          fit: BoxFit
                              .cover, // Adjust the fit based on your requirements
                        ),
                        Positioned(
                            bottom: 12,
                            left: 0,
                            right: 0,
                            child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: imgList1.length,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              ),
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: CircleAvatar(
                                          radius: 28,
                                          child: Image.asset(
                                            imgList1[index],
                                            height: 25,
                                            width: 25,
                                            fit: BoxFit.cover,
                                          ),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: 60,
                                          child: Text(
                                            namesList1[index],
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: lightgreyprimarycolor,
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Clean And Pest Control',
                      style: TextStyle(
                        color: lightgreyprimarycolor,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 270,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10), // Image border
                                      child: Image.asset(
                                        "assets/images/cleaning.png",
                                        fit: BoxFit.cover,
                                        height: 200,
                                        width: 260,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Full home cleaning',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
