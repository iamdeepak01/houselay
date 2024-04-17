import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

import 'Showroom_comm_rent_inside_page_4/showroom_comm_rent_inside_4.dart';

class Showroom_comm_rent_inside_page_3 extends StatefulWidget {
  const Showroom_comm_rent_inside_page_3({super.key});

  @override
  State<Showroom_comm_rent_inside_page_3> createState() =>
      _Showroom_comm_rent_inside_page_3State();
}

class _Showroom_comm_rent_inside_page_3State
    extends State<Showroom_comm_rent_inside_page_3> {
  bool _isChecked = false;

  TextEditingController _priceController = TextEditingController();
  TextEditingController _bookingAmountController = TextEditingController();

  @override
  void dispose() {
    _priceController.dispose();
    _bookingAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          //   color: Color.fromARGB(95, 255, 247, 247),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(15.0),
          //   topRight: Radius.circular(15.0),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => showroom_comm_rent_inside_4()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: whiteprimarycolor,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
              height: 60,
            ),

            Text(
              "Price You Expect",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              child: TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  labelText: '\u{20B9}  Expected Price',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 1,
            //       child: Checkbox(
            //         value: _isChecked,
            //         onChanged: (value) {
            //           setState(() {
            //             _isChecked = value!;
            //           });
            //         },
            //       ),
            //     ),
            //     Expanded(
            //       flex: 3,
            //       child: Text('Checkbox'),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 42,
            ),
            SizedBox(
              height: 45,
              child: TextField(
                controller: _bookingAmountController,
                decoration: InputDecoration(
                  labelText: '\u{20B9}  Enter Booking/Token Amount(optional)',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
