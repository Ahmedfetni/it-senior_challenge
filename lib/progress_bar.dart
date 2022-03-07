import 'package:flutter/material.dart';
import 'dart:async';
import 'choosing_avatar.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with SingleTickerProviderStateMixin {
  var controller;
  var animation;
  Timer? timer;
  double progress = 0;
  
  void incProgress(){
    setState(() {
      progress+=0.2;
    });
     
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation =
        controller.drive(ColorTween(begin: Colors.yellow, end: Colors.red));
    //controller.repeat();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t)=>incProgress()
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
        valueColor: animation,
        backgroundColor: Colors.grey,
        value: progress,
      ),
    );
  }
}
