import 'package:flutter/material.dart';

const Color subcategorycolor2 = Color(0xFF153149);
const Color primarycolor = Color(0xFF1B74E4);
const Color whiteprimarycolor = Colors.white;

const Color greyprimarycolor = Color(0xFF4A4A4A);
const Color lightgreyprimarycolor = Color(0xFF727272);

class simple_text extends StatefulWidget {
  const simple_text({super.key});

  @override
  State<simple_text> createState() => _simple_textState();
}

class _simple_textState extends State<simple_text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Searching in',
                style: TextStyle(
                  color: Color(0xFF565656),
                  fontSize: 12.50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' ',
                style: TextStyle(
                  color: Color(0xFF2D2B58),
                  fontSize: 12.50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Delhi',
                style: TextStyle(
                  color: Color(0xFF1B74E4),
                  fontSize: 12.50,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
