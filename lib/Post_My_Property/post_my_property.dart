import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class post_my_property_page extends StatefulWidget {
  const post_my_property_page({super.key});

  @override
  State<post_my_property_page> createState() => _post_my_property_pageState();
}

class _post_my_property_pageState extends State<post_my_property_page> {
  List<bool> isIconVisibleListsell = [false];
  List<bool> isIconVisibleListrent = [false];
  List<bool> isIconVisibleListrentpghostal = [false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Container with Check Icon'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isIconVisibleListsell[0] = !isIconVisibleListsell[
                        0]; // Assuming you only have one icon
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sell',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isIconVisibleListsell[0] = !isIconVisibleListsell[
                              0]; // Assuming you only have one icon
                        });
                      },
                      child: Stack(
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
                          if (isIconVisibleListsell[
                              0]) // Using index 0 since we only have one icon
                            Icon(
                              Icons.check_outlined,
                              size: 17,
                              color: primarycolor,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 0.70,
                color: Color.fromARGB(255, 199, 197, 197),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isIconVisibleListrent[0] = !isIconVisibleListrent[
                        0]; // Assuming you only have one icon
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rent',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isIconVisibleListrent[0] = !isIconVisibleListrent[
                              0]; // Assuming you only have one icon
                        });
                      },
                      child: Stack(
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
                          if (isIconVisibleListrent[
                              0]) // Using index 0 since we only have one icon
                            Icon(
                              Icons.check_outlined,
                              size: 17,
                              color: primarycolor,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 0.70,
                color: Color.fromARGB(255, 199, 197, 197),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isIconVisibleListrentpghostal[0] =
                        !isIconVisibleListrentpghostal[
                            0]; // Assuming you only have one icon
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PG',
                      style: TextStyle(
                        color: Color(0xFF6C6C6C),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isIconVisibleListrentpghostal[0] =
                              !isIconVisibleListrentpghostal[
                                  0]; // Assuming you only have one icon
                        });
                      },
                      child: Stack(
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
                          if (isIconVisibleListrentpghostal[
                              0]) // Using index 0 since we only have one icon
                            Icon(
                              Icons.check_outlined,
                              size: 17,
                              color: primarycolor,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
