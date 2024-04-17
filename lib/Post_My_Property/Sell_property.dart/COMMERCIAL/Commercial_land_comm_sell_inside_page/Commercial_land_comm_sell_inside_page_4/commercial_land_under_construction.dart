import 'package:flutter/material.dart';

import 'Commercial_land_calender_under_construction_page.dart';

class commercial_land_under_construction_page extends StatefulWidget {
  const commercial_land_under_construction_page({super.key});

  @override
  State<commercial_land_under_construction_page> createState() =>
      _commercial_land_under_construction_pageState();
}

class _commercial_land_under_construction_pageState
    extends State<commercial_land_under_construction_page> {
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
                ? Commercial_land_calender_under_construction_page()
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
