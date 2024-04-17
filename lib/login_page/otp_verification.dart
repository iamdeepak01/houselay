import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:houselay/Tabbar/tabbar_page.dart';
import 'package:houselay/styles/colors.dart';
import 'package:pinput/pinput.dart';

class otp_verification extends StatefulWidget {
  const otp_verification({super.key});

  @override
  State<otp_verification> createState() => _otp_verificationState();
}

class _otp_verificationState extends State<otp_verification> {
  bool pin = true;
  TextEditingController otpController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isLoading = false;
  final focusNode = FocusNode();
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    otpController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 42,
      height: 42,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFC3C3C3),
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.7, 0.7),
            blurRadius: 12,
            color: Color.fromARGB(255, 209, 209, 209).withOpacity(0.5),
          ),
        ],
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color(0xFFC3C3C3)),
      borderRadius: BorderRadius.circular(10),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(),
    );

    return Scaffold(
      backgroundColor: whiteprimarycolor,
      appBar: AppBar(
        backgroundColor: whiteprimarycolor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: greyprimarycolor,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: const Text(
          " OTP Verification",
          style: TextStyle(
              color: greyprimarycolor,
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "We have sent a Verification Code to",
                style: TextStyle(
                    color: lightgreyprimarycolor,
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                "+91-123456789",
                style: TextStyle(
                    color: greyprimarycolor,
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Pinput(
                  controller: otpController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  errorTextStyle: TextStyle(color: Colors.white),
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  validator: (s) {
                    return s == '222222' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: whiteprimarycolor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.7, 0.7),
                        blurRadius: 12,
                        color:
                            Color.fromARGB(255, 221, 220, 220).withOpacity(0.5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color(0xFFC3C3C3),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 10, right: 10),
                  child: Text("Resend SMS in 20 sec.",
                      style: TextStyle(
                        color: lightgreyprimarycolor,
                        fontSize: 15,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              const SizedBox(
                height: 25,
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
                      Get.to(() => tabbar_page());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Try Other Login Methods",
                  style: TextStyle(
                      color: primarycolor,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
