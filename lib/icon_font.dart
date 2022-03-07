import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  final double textSize;
  const IconFont(this.textSize,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      "SKRIBLE GAME",
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 199, 0),
        fontSize: textSize,
        fontFamily: 'work_of_fortress',
      ),
    );
  }
}
