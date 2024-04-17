import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import 'Stdio_apartment_res_sell_inside_2.dart';

class Stdio_apartment_res_sell_inside_1 extends StatefulWidget {
  const Stdio_apartment_res_sell_inside_1({super.key});

  @override
  State<Stdio_apartment_res_sell_inside_1> createState() =>
      _Stdio_apartment_res_sell_inside_1State();
}

class _Stdio_apartment_res_sell_inside_1State
    extends State<Stdio_apartment_res_sell_inside_1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  bool showTextField3And4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(95, 255, 247, 247),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Continue button pressed and form is valid

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Stdio_apartment_res_sell_inside_2_page()),
                    );
                  }
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Where is your property located?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: _controller1,
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
                    if (text.isNotEmpty && _controller2.text.isNotEmpty) {
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
                TextFormField(
                  controller: _controller2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter project/society or locality';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Project/Society or Locality',
                    labelStyle: TextStyle(
                      color: lightgreyprimarycolor,
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onChanged: (text) {
                    if (text.isNotEmpty && _controller1.text.isNotEmpty) {
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
                  TextFormField(
                    controller: _controller4,
                    decoration: InputDecoration(
                      labelText: 'Enter Address(Optional)',
                      labelStyle: TextStyle(
                        color: lightgreyprimarycolor,
                        fontSize: 15,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ]),
        ),
      ),
    );
  }
}
