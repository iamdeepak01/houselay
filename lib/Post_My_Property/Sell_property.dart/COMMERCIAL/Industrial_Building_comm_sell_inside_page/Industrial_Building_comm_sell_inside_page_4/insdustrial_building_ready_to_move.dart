import 'package:flutter/material.dart';

import '../../../../../styles/colors.dart';

class insdustrial_building_ready_to_move extends StatefulWidget {
  const insdustrial_building_ready_to_move({super.key});

  @override
  State<insdustrial_building_ready_to_move> createState() =>
      _insdustrial_building_ready_to_moveState();
}

class _insdustrial_building_ready_to_moveState
    extends State<insdustrial_building_ready_to_move> {
  String _textValue = ''; // Track the text value entered in TextFormField
  List<String> namesList = [
    "New Construction",
    "Less than 5 years",
    "5 to 10 years",
    "10 to 15 years",
    "15 to 20 years",
    "Above 20 years"
  ];

  void _startBottomSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (_) {
        return Container(
          height: 250, // Adjust height according to your need
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView.builder(
                itemCount: namesList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _textValue = namesList[index];
                      });
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            namesList[index],
                            style: TextStyle(
                              color: lightgreyprimarycolor,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTextFormField(),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Enter text',
          suffixIcon: GestureDetector(
            onTap: () {
              _startBottomSheet();
            },
            child: Icon(Icons.arrow_drop_down),
          ),
        ),
        controller: TextEditingController(
            text: _textValue), // Bind the value of the text field
        readOnly: true, // Make the text field read-only
      ),
    );
  }
}
