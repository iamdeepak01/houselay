import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Residential_house_sell_inside_page/housse_res_sell_inside_3.dart';
import 'package:houselay/styles/colors.dart';

import '../Residential_falt_apartment_sell_inside_page/flat_apartment_res_sell_inside_3.dart';

class house_res_sell_inside_2_page extends StatefulWidget {
  const house_res_sell_inside_2_page({super.key});

  @override
  State<house_res_sell_inside_2_page> createState() =>
      _house_res_sell_inside_2_pageState();
}

class _house_res_sell_inside_2_pageState
    extends State<house_res_sell_inside_2_page> {
  int selectedIndex = -1; // Track the selected index
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _selectedItem;
  late String _selectedItem1;
// Setting initial value
  final List<String> namelist = [
    "Unfurnished",
    "Semi-Furnished",
    "Fully-Furnished",
  ];

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
                        builder: (context) => housse_res_sell_inside_3_page()),
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
                    "Looking to",
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 0, bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bedroom',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    // Set your desired height here
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 85,
                              height: 50,
                              decoration: BoxDecoration(
                                color: whiteprimarycolor,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  top: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  left: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the left side
                                  ),
                                  right: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the right side
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '1 BHK',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: greyprimarycolor,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Bathroom',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    // Set your desired height here
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 75,
                              height: 50,
                              decoration: BoxDecoration(
                                color: whiteprimarycolor,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  top: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  left: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the left side
                                  ),
                                  right: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the right side
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '1 BHK',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: greyprimarycolor,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Balcony(optionl)',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    // Set your desired height here
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 75,
                              height: 50,
                              decoration: BoxDecoration(
                                color: whiteprimarycolor,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  top: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width: 1, // Border width for the left side
                                  ),
                                  left: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the left side
                                  ),
                                  right: BorderSide(
                                    color: Colors.grey.shade300, // Border color
                                    width:
                                        0.5, // Border width for the right side
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '1 BHK',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: greyprimarycolor,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
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
                    "Width of Road facing the House (optional)",
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
              padding: EdgeInsets.all(10.0), // Adjust the padding as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Road Width",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        height: 45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            Text(
                              "Meters",
                              style: TextStyle(
                                color: Color(0xFF6C6C6C),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 50,
                              decoration:
                                  BoxDecoration(color: lightgreyprimarycolor),
                            )
                          ],
                        ),
                      )
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
