import 'package:flutter/material.dart';
import 'package:newsapp/data/user.dart';

class TitleReadTimeWidget extends StatelessWidget {
  const TitleReadTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Instapaper",
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Text(
              "Today's Reading",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                  color: Colors.blueGrey[300]),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              currentUser.timeReading + " left",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
