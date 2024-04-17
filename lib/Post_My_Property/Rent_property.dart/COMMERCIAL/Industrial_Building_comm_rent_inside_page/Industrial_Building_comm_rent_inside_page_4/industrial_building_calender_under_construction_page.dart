import 'package:flutter/material.dart';

class industrial_building_calender_under_construction_page
    extends StatefulWidget {
  const industrial_building_calender_under_construction_page({super.key});

  @override
  State<industrial_building_calender_under_construction_page> createState() =>
      _industrial_building_calender_under_construction_pageState();
}

class _industrial_building_calender_under_construction_pageState
    extends State<industrial_building_calender_under_construction_page> {
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final List<String> years =
      List.generate(27, (index) => (2024 + (index % 27)).toString());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.yellow),
          width: 200, // Adjust this height as per your requirement
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: months.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MonthItem(
                            month: months[index],
                            year: '',
                            onTap: () {
                              // Handle month selection here
                              print('Selected month: ${months[index]}');
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: years.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MonthItem(
                            month: '',
                            year: years[index],
                            onTap: () {
                              // Handle year selection here
                              print('Selected year: ${years[index]}');
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "OK",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MonthItem extends StatelessWidget {
  final String month;
  final String year;
  final VoidCallback? onTap;

  const MonthItem({
    Key? key,
    required this.month,
    required this.year,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            '$month $year',
            style: TextStyle(
              color: Colors.blue, // Customize text color as needed
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
