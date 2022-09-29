import 'package:flutter/material.dart';

class NoteText extends StatelessWidget {
  const NoteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Text("Hello World"),
        )
      ],
    );
  }
}
