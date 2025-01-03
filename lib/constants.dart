import 'package:flutter/material.dart';

TextStyle kTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle kCountStyle = TextStyle(
  color: Colors.lightBlue,
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

ButtonStyle kOutlinedButtonStyle({
  Color borderColor = Colors.lightBlue,
  double borderRadius = 5.0,
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
}) {
  return OutlinedButton.styleFrom(
    side: BorderSide(color: borderColor),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    padding: padding,
  );
}
