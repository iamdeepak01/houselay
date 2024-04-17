import 'package:flutter/material.dart';
import 'package:houselay/home%20page/search_property.dart';
import 'package:houselay/styles/colors.dart';
import 'package:houselay/Hostel/pg_hotel.dart';

import 'package:houselay/tabbar_premium_category/premium_listings_category.dart';
import 'package:houselay/tabbar_premium_category/profile_listings_premium.dart';

class prtabbar_premium_category_tabbar extends StatefulWidget {
  const prtabbar_premium_category_tabbar({super.key});

  @override
  State<prtabbar_premium_category_tabbar> createState() =>
      _prtabbar_premium_category_tabbarState();
}

class _prtabbar_premium_category_tabbarState
    extends State<prtabbar_premium_category_tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteprimarycolor,
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: SizedBox(
                  height: 43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context, false);
                        },
                        child: Image.asset(
                          "assets/images/Mask_arrow.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Material(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD4D4D4)),
                            color: whiteprimarycolor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 194, 190, 190)
                                    .withOpacity(0.5),
                                blurRadius: 8,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20),
                          //     border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.5,
                                          color: Color(0xFFBFBFBF))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 6, bottom: 6),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add_circle_rounded,
                                          color: Colors.blue,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        const Text('Add',
                                            style: TextStyle(
                                              color: greyprimarycolor,
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 25,
                                  width: 0.7,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFAFAFAF),
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
                                        suffixIcon: Icon(Icons.cancel,
                                            size: 20, color: Color(0xFFCDCDCD)),
                                        hintText: "Searching in Delhi",
                                        hintStyle: const TextStyle(
                                          color: greyprimarycolor,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/logout.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(tabs: const [
                Tab(
                    child: Text(
                  "Listings",
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: primarycolor,
                  ),
                )),
                Tab(
                    child: Text(
                  "Projects",
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: primarycolor,
                  ),
                )),
                Tab(
                    child: Text(
                  "launching soon",
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: primarycolor,
                  ),
                )),
              ]),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    premium_listings_category(),
                    PG_hostel_page(),
                    profile_listing_premium(),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
