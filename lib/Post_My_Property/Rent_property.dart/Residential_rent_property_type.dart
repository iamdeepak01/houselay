import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Rent_property.dart/RESIDENTIAL/Villa_Residential_rent_inside_page/villa_res_rent_inside_1.dart';

import 'package:houselay/styles/colors.dart';

import 'RESIDENTIAL/Pent_house_rent_inside_page/pent_house_res_rent_inside_1.dart';
import 'RESIDENTIAL/Plot_Residential_rent_inside_page/plot_res_rent_inside_1.dart';
import 'RESIDENTIAL/Residential_Builder_floor_rent_inside_page/builder_floor_res_rent_inside_1.dart';
import 'RESIDENTIAL/Residential_falt_apartment_rent_inside_page/flat_apartment_res_rent_inside_1.dart';
import 'RESIDENTIAL/Residential_house_rent_inside_page/house_res_rent_inside_1.dart';
import 'RESIDENTIAL/Stdio_apartment_Residential_rent_inside_page/Stdio_apartment_res_rent_inside_1.dart';
import 'RESIDENTIAL/farm_house_res_rent_inside_page/farm_house_res_rent_inside_1.dart';

class Residential_rent_property_type_page extends StatefulWidget {
  const Residential_rent_property_type_page({super.key});

  @override
  State<Residential_rent_property_type_page> createState() =>
      _Residential_rent_property_type_pageState();
}

class _Residential_rent_property_type_pageState
    extends State<Residential_rent_property_type_page> {
  List<String> nameslist = [
    "Flat/Apartment",
    "House",
    "Villa",
    "Builder Floor",
    "Plot",
    "Studio Apartment",
    "Penthouse",
    "Farm House"
  ];
  int selectedIndex = -1; // Track the selected index

  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => flat_apartment_res_rent_inside_1_page()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => house_res_rent_inside_1_page()),
        );
        // Navigate to the page for House
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => villa_res_rent_inside_1_page()),
        );
        // Navigate to the page for Villa
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => builder_floor_res_rent_inside_1_page()),
        );
        // Navigate to the page for Builder Floor
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => plot_res_rent_inside_1_page()),
        );
        // Navigate to the page for Plot
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Stdio_apartment_res_rent_inside_1()),
        );
        // Navigate to the page for Studio Apartment
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => pent_house_res_rent_inside_1_page()),
        );
        // Navigate to the page for Penthouse
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => fram_house_res_rent_inside_1_page()),
        );
        // Navigate to the page for Farm House
        break;
      default:
        break;
    }
  }

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
