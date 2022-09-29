import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

   AppLargeText({Key? key,
   this.size=15,
   required this.text,
   this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: FontWeight.bold ,
            letterSpacing: 2
          ),
        ),
      ],
    );
  }
}