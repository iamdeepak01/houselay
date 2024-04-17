import 'package:flutter/material.dart';
import 'package:houselay/styles/colors.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Jaipur",
              style: TextStyle(
                color: Color(0xFF1B74E4),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5.4 / 1.1,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 164,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF9F9FC),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.80, color: Color(0xFFD4D4D4)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Wooden Furnitures',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color:
                                greyprimarycolor, // Assuming greyprimarycolor is defined
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
