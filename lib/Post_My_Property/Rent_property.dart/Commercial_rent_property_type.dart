import 'package:flutter/material.dart';

import 'package:houselay/styles/colors.dart';

import 'COMMERCIAL/Agicultural_land_comm_rent_inside_page/Agiculturel_land_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Commercial_land_comm_rent_inside_page/Commercial_land_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Industrial_Building_comm_rent_inside_page/Industrial_Building_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Industrial_Shed_comm_rent_inside_page/Industrial_shed_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Industrial_land_comm_rent_inside_page/Industrial_land_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Office_Space_comm_rent_inside_page/Office_space_comm_rent_inside_1.dart';
import 'COMMERCIAL/Office_it_park_comm_rent_inside_page/Office_it_park_comm_rent_inside_1.dart';
import 'COMMERCIAL/Shop_comm_rent_inside_page/Shop_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Showroom_comm_rent_inside_page/Showroom_comm_rent_inside_page_1.dart';
import 'COMMERCIAL/Warehouse_comm_rent_inside_page/warehouse_comm_rent_inside_1.dart';

class Commercial_rent_property_type_page extends StatefulWidget {
  const Commercial_rent_property_type_page({super.key});

  @override
  State<Commercial_rent_property_type_page> createState() =>
      _Commercial_rent_property_type_pageState();
}

class _Commercial_rent_property_type_pageState
    extends State<Commercial_rent_property_type_page> {
  List<String> nameslist = [
    "Office Space",
    "Office in IT Park/SEZ",
    "Shop",
    "Showroom",
    "Commercial Land",
    "Warehouse/ Godown",
    "Industrial Land",
    "Industrial Building",
    "Industrial Shed",
    "Agricultural Land"
  ];

  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Office_space_comm_rent_inside_1_page()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Office_it_park_comm_rent_inside_1_page()),
        );
        // Navigate to the page for House
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Shop_comm_rent_inside_page_1()),
        );
        // Navigate to the page for Villa
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Showroom_comm_rent_inside_page_1()),
        );
        // Navigate to the page for Builder Floor
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Commercial_land_comm_rent_inside_page_1()),
        );
        // Navigate to the page for Plot
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => warehouse_comm_rent_inside_1_page()),
        );
        // Navigate to the page for Studio Apartment
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Industrial_land_comm_rent_inside_page_1()),
        );
        // Navigate to the page for Penthouse
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Industrial_Building_comm_rent_inside_page_1()),
        );
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Industrial_shed_comm_rent_inside_page_1()),
        );
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Agiculturel_land_comm_rent_inside_page_1()),
        );
        // Navigate to the page for Farm House
        break;
      default:
        break;
    }
  }

  int selectedIndex = -1; // Track the selected index
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nameslist.length,
      padding: EdgeInsets.all(0),
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update the selected index
                  navigateToPage(index); // Navigate to the selected page
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nameslist[index],
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 238, 238),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color.fromARGB(255, 199, 197, 197),
                              width: 0.70,
                            ),
                          ),
                        ),
                        if (selectedIndex ==
                            index) // Show the check mark only for the selected index
                          Icon(
                            Icons.check_outlined,
                            size: 17,
                            color: primarycolor,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(23, 97, 94, 94),
            )
          ],
        );
      },
    );
  }
}
