import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class PG_inside_page_1 extends StatefulWidget {
  const PG_inside_page_1({Key? key}) : super(key: key);

  @override
  State<PG_inside_page_1> createState() => _PG_inside_page_1State();
}

class _PG_inside_page_1State extends State<PG_inside_page_1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController Localitycontroller = TextEditingController();
  TextEditingController adresscontroller = TextEditingController();
  TextEditingController pincodecontroller = TextEditingController();
  TextEditingController landmarkcontroller = TextEditingController();
  TextEditingController pg_operationalcontroller = TextEditingController();
  bool showTextField3And4 = false;
  TextEditingController _textFieldController = TextEditingController();
  String _selectedValue = '';
  int selectedIndex = -1; // Added selectedIndex variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        )),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          decoration: ShapeDecoration(
            color: primarycolor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Where is your PG located?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Make sure you enter the correct address for a smooth verification.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: Localitycontroller,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter city';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Enter City',
                          labelStyle: TextStyle(
                            color: lightgreyprimarycolor,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            setState(() {
                              showTextField3And4 = true;
                            });
                          } else {
                            setState(() {
                              showTextField3And4 = false;
                            });
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      if (showTextField3And4) ...[
                        Text(
                          "Move the pointer to the accurate location of the Pg for quality tenant leads",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 320,
                          decoration:
                              BoxDecoration(color: lightgreyprimarycolor),
                        ),
                        TextFormField(
                          controller: adresscontroller,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            labelStyle: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: pincodecontroller,
                          decoration: InputDecoration(
                            labelText: 'Pincode',
                            labelStyle: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: landmarkcontroller,
                          decoration: InputDecoration(
                            labelText: 'Landmark',
                            labelStyle: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: pg_operationalcontroller,
                          decoration: InputDecoration(
                            labelText: 'PG operational since',
                            labelStyle: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
                          height: 15,
                        ),
                      ],
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    late String _selectedItem;
    late String _selectedItem1;
    // Setting initial value
    final List<String> namelist = [
      "Unfurnished",
      "Semi-Furnished",
      "Fully-Furnished",
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
