import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts/constants.dart';

class HeightWeight extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const HeightWeight({
    super.key,
    required this.title,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: kTextStyle,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            '$value',
            style: kCountStyle,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: onIncrement,
              style: kOutlinedButtonStyle(),
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.lightBlue[900],
              ),
            ),
            OutlinedButton(
              onPressed: onDecrement,
              style: kOutlinedButtonStyle(),
              child: Icon(FontAwesomeIcons.minus),
            ),
          ],
        ),
      ],
    );
  }
}
