import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import '../Office_Space_comm_sell_inside_page/Office_space_comm_sell_inside_3.dart';
import 'Commercial_land_comm_sell_inside_page_3.dart';

class Commercial_land_comm_sell_inside_page_2 extends StatefulWidget {
  const Commercial_land_comm_sell_inside_page_2({super.key});

  @override
  State<Commercial_land_comm_sell_inside_page_2> createState() =>
      _Commercial_land_comm_sell_inside_page_2State();
}

class _Commercial_land_comm_sell_inside_page_2State
    extends State<Commercial_land_comm_sell_inside_page_2> {
  int selectedIndex = -1;
  int pantrydIndex = -1;
  // Track the selected index
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _selectedItem;
  late String _selectedItem1;
// Setting initial value
  final List<String> namelist = ["Yes", "No"];

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
                            Commercial_land_comm_sell_inside_page_3()),
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
                    "Plot Specification",
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
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
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
                    "Boundary wall made",
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
                              labelText: "plot Area",
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
                  SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Plot Length in yrd (optional) ",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Plot Breadth in yrd (optional) ",
                      ),
                      keyboardType: TextInputType.number,
                    ),
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
