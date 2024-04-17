import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import 'Agent_page_inside_page2.dart';

class Agent_page_inside_page1 extends StatefulWidget {
  const Agent_page_inside_page1({super.key});

  @override
  State<Agent_page_inside_page1> createState() =>
      _Agent_page_inside_page1State();
}

class _Agent_page_inside_page1State extends State<Agent_page_inside_page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Agent_page_inside_page2()),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: ShapeDecoration(
              color: primarycolor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF1B74E4),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style: TextStyle(
                      color: whiteprimarycolor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Room Categories in Your PG",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Select all the available room categories in your PG",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              GridView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 75 / 50,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Return widget for index 0
                    return Container(
                      width: 75,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 204, 199, 199),
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.circular(
                            8), // Fixed border radius for all containers
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/wallet.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Notices Period',
                              style: TextStyle(
                                color: Color(0xFF6C6C6C),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
