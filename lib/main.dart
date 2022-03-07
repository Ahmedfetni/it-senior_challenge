import 'splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:skribbl_game/game.dart';



void main() {
  runApp(MaterialApp(
    home: SplashScreen(5, Game()),
  ));
}




