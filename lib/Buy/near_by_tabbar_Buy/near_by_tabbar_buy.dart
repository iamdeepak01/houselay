import 'package:flutter/material.dart';

class near_by_tabbar_buy_page extends StatefulWidget {
  const near_by_tabbar_buy_page({super.key});

  @override
  State<near_by_tabbar_buy_page> createState() =>
      _near_by_tabbar_buy_pageState();
}

class _near_by_tabbar_buy_pageState extends State<near_by_tabbar_buy_page> {
  List<String> namesList = [
    'Transportation',
    'Commute',
    'Food',
    'Health Care',
    'Park'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      itemCount: namesList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 9),
                                child: Column(
                                  children: [
                                    Text(
                                      namesList[index],
                                      style: TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    if (selectedIndex == index)
                                      Container(
                                        width: 50,
                                        height: 2,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1B74E4),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    decoration: BoxDecoration(color: Color(0xFFDAD7EB)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/airplanne.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Jaipur International Airport',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '15.KM',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/train.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Mansarovar metro station',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '8.KM',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/bus.png",
                      height: 18,
                      width: 18,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Sindhi camp bus stand',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '10.KM',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),

            // SizedBox(height: 20),
            // Text(
            //   'Extra content for ${namesList[selectedIndex]}',
            //   style: TextStyle(fontSize: 16, color: Colors.black),
            // ),
          ],
        ),
      ),
    );
  }
}
