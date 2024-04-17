import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class Owner_page_inside_page7 extends StatefulWidget {
  const Owner_page_inside_page7({Key? key}) : super(key: key);

  @override
  State<Owner_page_inside_page7> createState() =>
      _Owner_page_inside_page7State();
}

class _Owner_page_inside_page7State extends State<Owner_page_inside_page7> {
  TextEditingController _textFieldController = TextEditingController();
  String _selectedValue = ''; // Initialize selectedValue
  int selectedIndex = -1;
  final List<String> namelist = [
    "Food",
    "Room",
    "PG",
    "Locality",
    "Amenities",
    "Others"
  ];

  @override
  void initState() {
    super.initState();
    // Set the initial selected value to the first item in namelist
    if (namelist.isNotEmpty) {
      _selectedValue = namelist[0];
      _textFieldController.text = _selectedValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Tell Us More About Your PG",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Tell Us More About Your PG",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () {
                      _showPopup(context);
                    },
                    child: Icon(Icons.arrow_drop_down)),
                hintText: '$_selectedValue',
              ),
              onTap: () {
                _showPopup(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Write PG USP',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Example USPs",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Andhra food,Food Available 24x7, Multi-Cuisine",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
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
                          selectedIndex = index;
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
}
