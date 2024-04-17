import 'package:flutter/material.dart';
import 'package:houselay/example.dart';

import 'flat_apartment_calender_under_construction_page.dart';

class flat_apartment_under_construction_page extends StatefulWidget {
  const flat_apartment_under_construction_page({super.key});

  @override
  State<flat_apartment_under_construction_page> createState() =>
      _flat_apartment_under_construction_pageState();
}

class _flat_apartment_under_construction_pageState
    extends State<flat_apartment_under_construction_page> {
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
                ? flat_apartment_calender_under_construction_page()
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
