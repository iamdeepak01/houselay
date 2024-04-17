import 'package:flutter/material.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Pent_house_sell_inside_page/pent_house_res_sell_inside_4_page/pent_house_res_sell_inside_4.dart';
import 'package:houselay/styles/colors.dart';

class pent_house_res_sell_inside_3_page extends StatefulWidget {
  const pent_house_res_sell_inside_3_page({super.key});

  @override
  State<pent_house_res_sell_inside_3_page> createState() =>
      _pent_house_res_sell_inside_3_pageState();
}

class _pent_house_res_sell_inside_3_pageState
    extends State<pent_house_res_sell_inside_3_page> {
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
                        builder: (context) =>
                            pent_house_res_sell_inside_4_page()),
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
