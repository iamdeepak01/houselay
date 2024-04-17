import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Office_it_park_comm_sell_inside_page/Office_it_park_comm_sell_inside_4_page/office_it_park_ready_to_move.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Office_it_park_comm_sell_inside_page/Office_it_park_comm_sell_inside_4_page/office_it_park_under_construction.dart';
import 'package:houselay/styles/colors.dart';

class office_it_park_comm_sell_inside_4_page extends StatefulWidget {
  const office_it_park_comm_sell_inside_4_page({super.key});

  @override
  State<office_it_park_comm_sell_inside_4_page> createState() =>
      _office_it_park_comm_sell_inside_4_pageState();
}

class _office_it_park_comm_sell_inside_4_pageState
    extends State<office_it_park_comm_sell_inside_4_page> {
  bool showButton1Content = true;
  bool isResidentialSelected = true;
  bool isCommercialSelected = false;

  Widget buildSelectionContainer({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    Color containerColor =
        isSelected ? Colors.blue : greyprimarycolor; // Adjust color here
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 160,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.80,
            color: containerColor,
          ),
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Color.fromARGB(255, 200, 220, 241) : Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : greyprimarycolor,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What type property is it?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Available Form",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildSelectionContainer(
                        text: 'Under Construction',
                        isSelected: isResidentialSelected,
                        onTap: () {
                          setState(() {
                            showButton1Content = true;
                            isResidentialSelected = true;
                            isCommercialSelected = false;
                          });
                        },
                      ),
                      buildSelectionContainer(
                        text: 'Ready to Move',
                        isSelected: isCommercialSelected,
                        onTap: () {
                          setState(() {
                            showButton1Content = false;
                            isResidentialSelected = false;
                            isCommercialSelected = true;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            if (showButton1Content) Button1Content() else Button2Content(),
          ],
        ),
      ),
    );
  }
}

class Button1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 800, child: office_it_park_under_construction_page());
  }
}

class Button2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 800, child: office_it_park_ready_to_move_page())
        ],
      ),
    );
  }
}
