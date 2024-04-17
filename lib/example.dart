import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final List<String> propertyPlans = [
    "1 BHK (2400 Sqft)",
    "1 BHK (2910 Sqft)",
    "2 BHK (2400 Sqft)",
    "4 BHK (2400 Sqft)",
    "4 BHK (2665 Sqft)",
    "4 BHK (2890 Sqft)",
    "4 BHK (2910 Sqft)",
    "5 BHK (2900 Sqft)",
    "5 BHK (3100 Sqft)",
    "5 BHK (3260 Sqft)",
    "5 BHK (3615 Sqft)",
    "6 BHK (4465 Sqft)",
  ];
  int selectedIndexPlans = -1;
  bool seeMoreClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: seeMoreClicked ? propertyPlans.length : 5,
          padding: EdgeInsets.all(0),
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (index == 4 && !seeMoreClicked) {
              // Change index to 3 here
              return InkWell(
                onTap: () {
                  setState(() {
                    seeMoreClicked = true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.blue, // Change color as needed
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndexPlans = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            propertyPlans[index],
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
                              if (selectedIndexPlans == index)
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
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
