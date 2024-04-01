// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({
    super.key,
    required this.label,
    this.textColor = Colors.white,
    this.bgColor = const Color.fromRGBO(50, 50, 50, 1),
  });
  final String label;
  final Color textColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 36,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 34,

          // fontWeight: FontWeight.bold,
        ),
      ),
      // backgroundColor: Color.fromRGBO(50, 50, 50, 1),
      backgroundColor: bgColor,
    );
  }
}
