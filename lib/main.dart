import 'dart:io';

import 'package:flutter/foundation.dart';
import 'splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:skribbl_game/game.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) {
      exit(1);
    }
  };
  runApp(
    MaterialApp(
      home: SplashScreen(
        5,
        Game(),
      ),
    ),
  );
}
