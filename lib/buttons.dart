// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';



class buttons extends StatelessWidget {
  const buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 36,
      child: Text(
        "C",
        style: TextStyle(
          color: Colors.white,
          fontSize: 34,
    
          // fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromRGBO(50, 50, 50, 1),
    );
  }
}
