import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class buttons extends StatefulWidget {
  const buttons({super.key});

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  bool isGuchSelected = true;
  bool isGuruSelected = false;
  bool isThirdSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isGuchSelected = !isGuchSelected;
                isGuruSelected = false;
                isThirdSelected = false;
              });
            },
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.80,
                    color:
                        isGuchSelected ? Color(0xFF0861C3) : greyprimarycolor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 14,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/gallery.png",
                        height: 20, width: 20, fit: BoxFit.cover),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Photos',
                      style: TextStyle(
                        color: greyprimarycolor,
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.20, color: Color(0xFFBFBFBF)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '1/10',
                            style: TextStyle(
                              color: greyprimarycolor,
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isGuchSelected = false;
                isGuruSelected = !isGuruSelected;
                isThirdSelected = false;
              });
            },
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.80,
                    color:
                        isGuruSelected ? Color(0xFF0861C3) : greyprimarycolor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 14,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/camera.png",
                        height: 20, width: 20, fit: BoxFit.cover),
                    Text(
                      '360 View',
                      style: TextStyle(
                        color: greyprimarycolor,
                        fontSize: 11,
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
          InkWell(
            onTap: () {
              setState(() {
                isGuchSelected = false;
                isGuruSelected = false;
                isThirdSelected = !isThirdSelected;
              });
            },
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.80,
                    color:
                        isThirdSelected ? Color(0xFF0861C3) : greyprimarycolor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x1E000000),
                    blurRadius: 14,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.play_circle_outline),
                    Text(
                      'Viodes',
                      style: TextStyle(
                        color: greyprimarycolor,
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
