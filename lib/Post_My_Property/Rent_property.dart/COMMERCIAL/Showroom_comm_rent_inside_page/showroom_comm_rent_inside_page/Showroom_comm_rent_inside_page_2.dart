import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import '../Showroom_comm_rent_inside_page_3.dart';
import 'lock_in_peroid_inside_2_shoowroom.dart';

class Showroom_comm_rent_inside_page_2 extends StatefulWidget {
  const Showroom_comm_rent_inside_page_2({super.key});

  @override
  State<Showroom_comm_rent_inside_page_2> createState() =>
      _Showroom_comm_rent_inside_page_2State();
}

class _Showroom_comm_rent_inside_page_2State
    extends State<Showroom_comm_rent_inside_page_2> {
  int selectedIndex = -1;
  int pantrydIndex = -1;
  int washroomdIndex = -1;
  int cornershopnameIndex = -1;
  int ismainroadIndex = -1;
  // Track the selected index
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _selectedItem;
  late String _selectedItem1;
// Setting initial value
  final List<String> namelist = [
    "Unfurnished",
    "Semi-Furnished",
    "Fully-Furnished",
  ];
  final List<String> pentrynamelist = [
    "Dry",
    "Wet",
    "Not Available",
  ];
  final List<String> washroomnamelist = ["Yes", "No"];
  final List<String> cornershopnamelist = ["Yes", "No"];
  final List<String> ismainroadnamelist = ["Yes", "No"];

  List<String> _items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  List<String> _itemsSqft = [
    "Sqft",
    "Sqyrd",
    "Sqm",
    "Acre",
    "Bigha",
    "Hectare",
    "Marla",
    "Kanal",
    "Biswa1",
    "Biswa2",
    "Ground",
    "Aankadam",
    "Rood",
    "Chatak",
    "Kottah",
    "Marla",
    "Cent",
    "Perch",
    "Guntha",
    "Are",
  ];
  List<String> _itemsSqftsuper = [
    "Sqft",
    "Sqyrd",
    "Sqm",
    "Acre",
    "Bigha",
    "Hectare",
    "Marla",
    "Kanal",
    "Biswa1",
    "Biswa2",
    "Ground",
    "Aankadam",
    "Rood",
    "Chatak",
    "Kottah",
    "Marla",
    "Cent",
    "Perch",
    "Guntha",
    "Are",
  ];
  List<String> _items1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  @override
  void initState() {
    _selectedItem = _items.first;
    _selectedItem1 = _items1.first; // Set the initial value to the first item
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String? _selectedItemSqft = _itemsSqft.first;
    String? _selectedItemSqftsuperrrr = _itemsSqft.first;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          //   color: Color.fromARGB(95, 255, 247, 247),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(15.0),
          //   topRight: Radius.circular(15.0),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Showroom_comm_rent_inside_page_3()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: whiteprimarycolor,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More details to get relvant buyers",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Washroom (Optional)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Personal Washroom",
                    style: TextStyle(
                      color: Color(0xFF6C6C6C),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: washroomnamelist.length,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              washroomdIndex =
                                  index; // Update the selected index
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  washroomnamelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 199, 197, 197),
                                          width: 0.70,
                                        ),
                                      ),
                                    ),
                                    if (washroomdIndex ==
                                        index) // Show the check mark only for the selected index
                                      Icon(
                                        Icons.check_outlined,
                                        size: 17,
                                        color: primarycolor,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lock-in-period in Years (optinal)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: lock_in_peroid_inside_2_shoowroom_page(),
                )),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pantry/Cafeteria (Optional)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: pentrynamelist.length,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              pantrydIndex = index; // Update the selected index
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  pentrynamelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 199, 197, 197),
                                          width: 0.70,
                                        ),
                                      ),
                                    ),
                                    if (pantrydIndex ==
                                        index) // Show the check mark only for the selected index
                                      Icon(
                                        Icons.check_outlined,
                                        size: 17,
                                        color: primarycolor,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Corner Shop (Optional)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: cornershopnamelist.length,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              cornershopnameIndex =
                                  index; // Update the selected index
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  cornershopnamelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 199, 197, 197),
                                          width: 0.70,
                                        ),
                                      ),
                                    ),
                                    if (cornershopnameIndex ==
                                        index) // Show the check mark only for the selected index
                                      Icon(
                                        Icons.check_outlined,
                                        size: 17,
                                        color: primarycolor,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Is Main Road Facing (Optional)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: ismainroadnamelist.length,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ismainroadIndex =
                                  index; // Update the selected index
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  ismainroadnamelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 199, 197, 197),
                                          width: 0.70,
                                        ),
                                      ),
                                    ),
                                    if (ismainroadIndex ==
                                        index) // Show the check mark only for the selected index
                                      Icon(
                                        Icons.check_outlined,
                                        size: 17,
                                        color: primarycolor,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Floor Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        labelText: 'Total Number of Floors in House',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 116, 114, 114),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        )),
                    padding: EdgeInsets.all(0),
                    value: _selectedItem,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedItem = newValue!;
                      });
                    },
                    items: _items.map((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        labelText: 'No of open sides (optional)',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 116, 114, 114),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        )),
                    padding: EdgeInsets.all(0),
                    value: _selectedItem1,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedItem1 = newValue!;
                      });
                    },
                    items: _items1.map((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Floor Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: namelist.length,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index; // Update the selected index
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  namelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 199, 197, 197),
                                          width: 0.70,
                                        ),
                                      ),
                                    ),
                                    if (selectedIndex ==
                                        index) // Show the check mark only for the selected index
                                      Icon(
                                        Icons.check_outlined,
                                        size: 17,
                                        color: primarycolor,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
            Container(
              // height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Property Area",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Provide either Carpet Area or Super Area",
                        style: TextStyle(
                          color: lightgreyprimarycolor,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Carpet Area",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(),
                            value: _selectedItemSqft,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedItemSqft = newValue!;
                              });
                            },
                            items: _itemsSqft.map((item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return "Required field";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Super Area",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: SizedBox(
                            height: 45,
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(),
                              value: _selectedItemSqftsuperrrr,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedItemSqftsuperrrr = newValue!;
                                });
                              },
                              items: _itemsSqftsuper.map((item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              validator: (value) {
                                if (value == null) {
                                  return "Required field";
                                } else {
                                  return null;
                                }
                              },
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
