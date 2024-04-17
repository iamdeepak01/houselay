import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class YOU_ARE_POSTING_THIS_PG_page extends StatefulWidget {
  const YOU_ARE_POSTING_THIS_PG_page({Key? key}) : super(key: key);

  @override
  State<YOU_ARE_POSTING_THIS_PG_page> createState() =>
      _YOU_ARE_POSTING_THIS_PG_pageState();
}

class _YOU_ARE_POSTING_THIS_PG_pageState
    extends State<YOU_ARE_POSTING_THIS_PG_page> {
  int selectedIndex = -1;
  bool showPopup = false;

  final List<String> namelist = [
    "Owner",
    "Property Manager",
    "Agent",
  ];

  void _showPopUp(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You cannot change the user type once your PG is listed.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Are you sure you want to proceed?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "OK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primarycolor),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       showPopup = false;
                    //     });
                    //     Navigator.of(context).pop();
                    //   },
                    //   child: Text('Cancel'),
                    // ),
                    // TextButton(
                    //   onPressed: () {
                    //     // Perform action on OK
                    //     Navigator.of(context).pop();
                    //   },
                    //   child: Text('OK'),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
            if (selectedIndex != -1) {
              setState(() {
                showPopup = true;
                _showPopUp(namelist[selectedIndex]);
              });
            }
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "You Are Posting this Pg As",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListView.builder(
              itemCount: namelist.length,
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
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              namelist[index],
                              style: TextStyle(
                                color: Color(0xFF6C6C6C),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            if (selectedIndex == index)
                              Icon(
                                Icons.check_outlined,
                                size: 17,
                                color: primarycolor,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
