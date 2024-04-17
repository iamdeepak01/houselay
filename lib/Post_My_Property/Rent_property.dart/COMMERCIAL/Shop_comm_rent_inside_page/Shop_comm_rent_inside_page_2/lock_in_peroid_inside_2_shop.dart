import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class lock_in_peroid_inside_2_shop_page extends StatefulWidget {
  const lock_in_peroid_inside_2_shop_page({super.key});

  @override
  State<lock_in_peroid_inside_2_shop_page> createState() =>
      _lock_in_peroid_inside_2_shop_pageState();
}

class _lock_in_peroid_inside_2_shop_pageState
    extends State<lock_in_peroid_inside_2_shop_page> {
  String _textValue = ''; // Track the text value entered in TextFormField
  List<String> namesList = ["1", "2", "3", "4", "5", "6"];
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
