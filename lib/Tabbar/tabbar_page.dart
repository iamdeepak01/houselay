import 'package:flutter/material.dart';
import 'package:houselay/home%20page/home_service.dart';
import 'package:houselay/home%20page/search_property.dart';
import 'package:houselay/home%20page/student_assist.dart';
import 'package:houselay/styles/colors.dart';

class tabbar_page extends StatefulWidget {
  const tabbar_page({super.key});

  @override
  State<tabbar_page> createState() => _tabbar_pageState();
}

class _tabbar_pageState extends State<tabbar_page> {
  String tabImage = "assets/images/Search_Property.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 240.0,
                leading: Icon(
                  Icons.abc,
                  color: Colors.transparent,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        tabImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search_outlined,
                                      color: Colors.grey.shade400,
                                    )),
                                Container(
                                  height: 30,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      prefixIcon: Container(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "Search in",
                                              style: TextStyle(
                                                color: Color(0xFF696969),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              " Jaipur",
                                              style: TextStyle(
                                                color: Color(0xFF1B74E4),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mic_none,
                                      color: Colors.grey.shade400,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: TabBar(
                    onTap: (index) {
                      setState(() {
                        if (index == 0) {
                          tabImage = "assets/images/Search_Property.png";
                        } else if (index == 1) {
                          tabImage = "assets/images/Home_Services.png";
                        } else if (index == 2) {
                          tabImage = "assets/images/Student_Assist.png";
                        }
                      });
                    },
                    tabs: const [
                      Tab(text: "Search Property"),
                      Tab(text: "Home Services"),
                      Tab(text: "Student Assist"),
                    ],
                    labelStyle: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                child: search_property(),
              ),
              Container(
                child: home_service(),
              ),
              Container(
                child: student_assist(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
