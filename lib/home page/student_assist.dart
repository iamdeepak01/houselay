import 'package:flutter/material.dart';
import 'package:houselay/Hostel/PG_Hostel_Inside.dart';
import 'package:houselay/styles/colors.dart';

class student_assist extends StatefulWidget {
  const student_assist({super.key});

  @override
  State<student_assist> createState() => _student_assistState();
}

class _student_assistState extends State<student_assist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Divider(
                      thickness: 2,
                      indent: 10,
                      endIndent: 5,
                      color: Color(0xFFF1F1F1),
                    ),
                  ),
                  Text('Explore',
                      style: TextStyle(
                          color: lightgreyprimarycolor,
                          fontSize: 22,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600)),
                  Flexible(
                      child: Divider(
                    thickness: 2,
                    indent: 5,
                    endIndent: 10,
                    color: Color(0xFFF1F1F1),
                  )),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFE9EEF6),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                          elevation: 0,
                          color: whiteprimarycolor,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: whiteprimarycolor,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF0165E1),
                                                Color(0xFF17A9FC),
                                              ],
                                            )),
                                        child: CircleAvatar(
                                            radius: 25,
                                            child: Image.asset(
                                              "assets/images/library.png",
                                              height: 25,
                                              width: 25,
                                              fit: BoxFit.cover,
                                            ),
                                            backgroundColor:
                                                Colors.transparent)),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'Library',
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: lightgreyprimarycolor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Card(
                          elevation: 0,
                          color: whiteprimarycolor,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: whiteprimarycolor,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF0165E1),
                                                Color(0xFF17A9FC),
                                              ],
                                            )),
                                        child: CircleAvatar(
                                            radius: 25,
                                            child: Image.asset(
                                              "assets/images/home_tutor.png",
                                              height: 25,
                                              width: 25,
                                              fit: BoxFit.cover,
                                            ),
                                            backgroundColor:
                                                Colors.transparent)),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'Home Tutor',
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: lightgreyprimarycolor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Card(
                          elevation: 0,
                          color: whiteprimarycolor,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: whiteprimarycolor,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF0165E1),
                                                Color(0xFF17A9FC),
                                              ],
                                            )),
                                        child: CircleAvatar(
                                            radius: 25,
                                            child: Image.asset(
                                              "assets/images/room_flate.png",
                                              height: 25,
                                              width: 25,
                                              fit: BoxFit.cover,
                                            ),
                                            backgroundColor:
                                                Colors.transparent)),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'Room/Flat Mate',
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: lightgreyprimarycolor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Card(
                          elevation: 0,
                          color: whiteprimarycolor,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: whiteprimarycolor,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF0165E1),
                                                Color(0xFF17A9FC),
                                              ],
                                            )),
                                        child: CircleAvatar(
                                            radius: 25,
                                            child: Image.asset(
                                              "assets/images/Group.png",
                                              height: 25,
                                              width: 25,
                                              fit: BoxFit.contain,
                                            ),
                                            backgroundColor:
                                                Colors.transparent)),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      'Tiffin Center/Mess',
                                      style: TextStyle(
                                        color: lightgreyprimarycolor,
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: lightgreyprimarycolor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Looking For Students & More ?',
                        style: TextStyle(
                          color: greyprimarycolor,
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5.0,
                            height: 5.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: lightgreyprimarycolor),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Add Student Assist Services Free',
                            style: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5.0,
                            height: 5.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: lightgreyprimarycolor),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Looking For Flatmate, Post Your Property',
                            style: TextStyle(
                              color: lightgreyprimarycolor,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF17A9FC), Color(0xFF0165E1)]),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Post My Property',
                              style: TextStyle(
                                  color: whiteprimarycolor,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
