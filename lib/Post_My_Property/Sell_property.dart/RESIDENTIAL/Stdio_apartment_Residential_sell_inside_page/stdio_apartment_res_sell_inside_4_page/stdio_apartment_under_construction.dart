import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Stdio_apartment_Residential_sell_inside_page/stdio_apartment_res_sell_inside_4_page/Stdio_apartment_calender_under_construction_page.dart';

class stdio_apartment_under_construction_page extends StatefulWidget {
  const stdio_apartment_under_construction_page({super.key});

  @override
  State<stdio_apartment_under_construction_page> createState() =>
      _stdio_apartment_under_construction_pageState();
}

class _stdio_apartment_under_construction_pageState
    extends State<stdio_apartment_under_construction_page> {
  bool _showCalendar = false;
  String _textValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            _buildTextFormField(),
            SizedBox(height: 20),
            _showCalendar
                ? Stdio_apartment_calender_under_construction_page()
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter text',
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showCalendar = !_showCalendar; // toggle the value
            });
          },
          child: Icon(Icons.arrow_drop_down),
        ),
      ),
      onTap: () {
        setState(() {
          _showCalendar = true; // Show the calendar when text field is tapped
        });
      },
      onChanged: (value) {
        setState(() {
          _textValue = value;
        });
      },
    );
  }
}
