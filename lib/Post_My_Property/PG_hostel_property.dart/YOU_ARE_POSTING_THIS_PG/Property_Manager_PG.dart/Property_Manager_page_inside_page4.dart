import 'package:flutter/material.dart';

import '../../../../styles/colors.dart';
import 'Property_Manager_page_inside_page5.dart';

class Property_Manager_page_inside_page4 extends StatefulWidget {
  const Property_Manager_page_inside_page4({super.key});

  @override
  State<Property_Manager_page_inside_page4> createState() =>
      _Property_Manager_page_inside_page4State();
}

class _Property_Manager_page_inside_page4State
    extends State<Property_Manager_page_inside_page4> {
  final List<String> namelist = [
    "Veg Only",
    "No Smoking",
    "Drinkig allowed",
  ];
  int selectedIndex = -1;
  final List<String> imagelist = [
    "assets/images/bed_black.png",
    "assets/images/armchair.png",
    "assets/images/office_chair.png",
  ];
  bool showTextField3And4 = false;
  TextEditingController _textFieldController = TextEditingController();
  String _selectedValue = '';
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Property_Manager_page_inside_page5()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: ShapeDecoration(
              color: primarycolor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF1B74E4),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style: TextStyle(
                      color: whiteprimarycolor,
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "PG Rules",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 18,
            ),
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
                          selectedIndex = index; // Update the selected index
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  imagelist[index],
                                  height: 35,
                                  width: 35,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  namelist[index],
                                  style: TextStyle(
                                    color: Color(0xFF6C6C6C),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 199, 197, 197),
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
                    if (index != namelist.length - 1)
                      Divider(), // Add a divider except for the last item
                  ],
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                hintText: 'Selected Value: $_selectedValue',
              ),
              onTap: () {
                _showPopup(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 70,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 235, 232, 232)),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Tenants must be back in PG before ",
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.grey,
                      activeColor: Colors.white,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    late String _selectedItem;
    late String _selectedItem1;
    // Setting initial value
    final List<String> namelist = [
      "1 Week",
      "15 Days",
      "1 Month",
      "2 Month",
      ">2 Month",
      "No Notice Period"
    ];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a Value'),
          content: SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: namelist.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update the selected index
                          _selectedValue = namelist[index];
                          _textFieldController.text = _selectedValue;
                        });
                        Navigator.of(context).pop();
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
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 199, 197, 197),
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
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionButton(BuildContext context, String option) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedValue = option;
          _textFieldController.text = option;
        });
        Navigator.of(context).pop();
      },
      child: Text(option),
    );
  }
}
