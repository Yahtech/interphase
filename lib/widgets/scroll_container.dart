import 'package:flutter/material.dart';

class ScrollView extends StatefulWidget {
  const ScrollView({super.key});

  @override
  State<ScrollView> createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        height: 30,
        width: 30,
        color: Colors.blue,
      )],
    );
  }
}
