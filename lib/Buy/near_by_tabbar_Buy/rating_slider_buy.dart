import 'package:flutter/material.dart';

class rating_slider_buy_page extends StatefulWidget {
  const rating_slider_buy_page({super.key});

  @override
  State<rating_slider_buy_page> createState() => _rating_slider_buy_pageState();
}

class _rating_slider_buy_pageState extends State<rating_slider_buy_page> {
  double _currentRating1 = 4.2; // Default rating value
  double _currentRating2 = 4.3;
  double _currentRating3 = 3.2; // Default rating value
  double _currentRating4 = 4.1;
  double _currentRating5 = 4.0; // Default rating value
  double _currentRating6 = 4.2;
  double _currentRating7 = 3.3; // Default rating value
  double _currentRating8 = 4.4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating1.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating1,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating1 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Food',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating2.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating2,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating2 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Water Supply',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating3.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating3,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating3 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cleanliness',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating4.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating4,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating4 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Staff Behavio',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating5.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating5,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating5 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Wifi Connectivity',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating6.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating6,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating6 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transportation',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating7.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating7,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating7 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Electricity Supply',
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            _currentRating8.toString(),
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1.8,
                        trackShape: CustomTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: SizedBox(
                        width: 160,
                        child: Slider(
                          activeColor: Color(0xFF1B74E4),
                          //  activeTrackColor: Color(0xFF1B74E4), // Track (line) color when active
                          thumbColor: Colors.black,
                          // thumbColor: Colors.black,
                          //inactiveColor: Colors.brown,
                          value: _currentRating8,
                          min: 1,
                          max: 5,
                          divisions: 4,
                          onChanged: (double value) {
                            setState(() {
                              _currentRating8 = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RectangularSliderTrackShape {
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx + 0; // Adjust left padding
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width - 20; // Adjust width

    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
