import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class PG_inside_page_2 extends StatefulWidget {
  const PG_inside_page_2({Key? key}) : super(key: key);

  @override
  State<PG_inside_page_2> createState() => _PG_inside_page_2State();
}

class _PG_inside_page_2State extends State<PG_inside_page_2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController pg_namecontroller = TextEditingController();

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
            if (_formKey.currentState!.validate()) {
              // Continue button pressed and form is valid
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
                  Form(
                    key: _formKey,
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: whiteprimarycolor,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
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
              "Confirm your PG name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The name will be visible to the guests when they search for PG on Magicbricks",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: pg_namecontroller,
              decoration: InputDecoration(
                labelText: 'Enter PG Name', // Corrected label
                labelStyle: TextStyle(
                  color: lightgreyprimarycolor,
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter PG name';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
