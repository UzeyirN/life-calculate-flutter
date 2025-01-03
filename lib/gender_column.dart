import 'package:flutter/material.dart';

class GenderColumn extends StatelessWidget {
  final String genderTitle;
  final IconData? genderIcon;

  const GenderColumn(
      {super.key, required this.genderTitle, required this.genderIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          color: Colors.grey[700],
          size: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          genderTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
