import 'package:flutter/material.dart';
import 'colors_of_the_game.dart';

class IconFont extends StatelessWidget {
  final double textSize;
  const IconFont(this.textSize,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      "SKRIBLE GAME",
      style: TextStyle(
        color: ColorsOfTheGame.yellow,
        fontSize: textSize,
        fontFamily: 'work_of_fortress',
      ),
    );
  }
}
