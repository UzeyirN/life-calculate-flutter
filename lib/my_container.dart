import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPress;
  final Color? color;

  MyContainer({this.child, this.onPress, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
      ),
    );
  }
}