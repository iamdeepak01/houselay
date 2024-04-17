import 'package:flutter/material.dart';

import 'industrial_building_calender_under_construction_page.dart';

class industrial_building_under_construction extends StatefulWidget {
  const industrial_building_under_construction({super.key});

  @override
  State<industrial_building_under_construction> createState() =>
      _industrial_building_under_constructionState();
}

class _industrial_building_under_constructionState
    extends State<industrial_building_under_construction> {
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
                ? industrial_building_calender_under_construction_page()
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
