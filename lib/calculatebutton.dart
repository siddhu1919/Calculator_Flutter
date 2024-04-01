// ignore_for_file: sort_child_properties_last, prefer_const_constructors, camel_case_types

import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  
  const CalculateButton({
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
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue("=");
      },
      child: CircleAvatar(
        radius: 40,
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
      ),
    );
  }
}
