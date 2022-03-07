import 'package:flutter/material.dart';
import 'progress_bar.dart';
import 'icon_font.dart';

class SplashScreen extends StatelessWidget {
  int duration;
  Widget gotoPage;
  SplashScreen(this.duration, this.gotoPage, {Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
          seconds: duration,
        ), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => gotoPage));
    });
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 164, 187, 187),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: const IconFont(30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration:const  BoxDecoration(shape: BoxShape.circle),
                  margin: const EdgeInsets.all(60),
                  padding:const EdgeInsets.all(10),
                  child: const ProgressBar(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
