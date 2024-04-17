import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houselay/login_page/otp_verification.dart';
import 'package:houselay/styles/colors.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/Login.png",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 8,
                      child: Card(
                        color: Color(0xFF3D7CF9),
                        elevation: 0.2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 15, right: 15),
                          child: Image.asset(
                            "assets/images/languge.png",
                            height: 22,
                            width: 22,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Positioned(
                    top: 40,
                    right: 8,
                    child: SizedBox(
                      child: Card(
                        color: Color(0xFF3D7CF9),
                        elevation: 0.2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 8, right: 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Skip",
                                    style: TextStyle(
                                        color: whiteprimarycolor,
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  WidgetSpan(
                                    child: Icon(Icons.arrow_forward_ios,
                                        color: whiteprimarycolor, size: 14),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: [
                      const Text(
                        "Find the Right Space and Property",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Services within a Click",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Divider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 5,
                              color: Color(0xFFC3C3C3),
                            ),
                          ),
                          Text('Log in or Sign up',
                              style: TextStyle(
                                  color: Color(0xFF5F5F5F),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700)),
                          Flexible(
                              child: Divider(
                            thickness: 1,
                            indent: 5,
                            endIndent: 10,
                            color: Color(0xFFC3C3C3),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.7, 0.7),
                                  blurRadius: 12,
                                  color: Color.fromARGB(255, 221, 220, 220)
                                      .withOpacity(0.5),
                                )
                              ],
                            ),
                            child: Card(
                              color: Colors.white,
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                    color: Color(0xFFC3C3C3),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Image.asset(
                                  "assets/images/india.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 260,
                            height: 55,
                            decoration: BoxDecoration(
                              color: whiteprimarycolor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 221, 220, 220)
                                      .withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0.7,
                                      0.7), // changes the position of the shadow
                                ),
                              ],
                            ),
                            child: SizedBox(
                              width: double
                                  .infinity, // Use full width of the container
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  controller: numbercontroller,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text(
                                        "+91",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                    hintText: 'Enter Phone / Email',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC3C3C3),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide:
                                          BorderSide(color: Color(0xFFC3C3C3)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide:
                                          BorderSide(color: Color(0xFFC3C3C3)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide:
                                          BorderSide(color: Color(0xFFC3C3C3)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter This 10 Digit Number ';
                                    }
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF17A9FC), Color(0xFF0165E1)]),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              Get.to(() => otp_verification());
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Divider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 5,
                              color: Color(0xFFC3C3C3),
                            ),
                          ),
                          Text('',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700)),
                          Flexible(
                              child: Divider(
                            thickness: 1,
                            indent: 5,
                            endIndent: 10,
                            color: Color(0xFFC3C3C3),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.7, 0.7),
                                  blurRadius: 12,
                                  color: Color.fromARGB(255, 221, 220, 220)
                                      .withOpacity(0.5),
                                )
                              ],
                            ),
                            child: Card(
                              color: Colors.white,
                              elevation: 0.2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Color(0xFFC3C3C3))),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Image.asset(
                                  "assets/images/google.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.7, 0.7),
                                  blurRadius: 12,
                                  color: Color.fromARGB(255, 221, 220, 220)
                                      .withOpacity(0.5),
                                )
                              ],
                            ),
                            child: Card(
                              color: Colors.white,
                              elevation: 0.2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Color(0xFFC3C3C3))),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Image.asset(
                                  "assets/images/apple.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "By continuing, you agree to our",
                        style: TextStyle(
                            color: Color(0xFF4A4A4A),
                            fontSize: 9,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Terms of Service",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFC3C3C3),
                                decorationThickness: 4,
                                color: Color(0xFF1B74E4),
                                fontSize: 9,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFC3C3C3),
                                decorationThickness: 4,
                                color: Color(0xFF1B74E4),
                                fontSize: 9,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Content Policies",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 4,
                                decorationColor: Color(0xFFC3C3C3),
                                color: Color(0xFF1B74E4),
                                fontSize: 9,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
