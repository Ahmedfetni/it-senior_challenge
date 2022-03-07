import 'package:flutter/material.dart';
import 'colors_of_the_game.dart';
import 'avatar.dart';
import 'room_key.dart';

class ChoosingAvatar extends StatefulWidget {
  String userName;

  ChoosingAvatar(this.userName, {Key? key}) : super(key: key);

  @override
  _ChoosingAvatarState createState() => _ChoosingAvatarState();
}

class _ChoosingAvatarState extends State<ChoosingAvatar> {
  Avatar ?avatar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsOfTheGame.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //choosing an avatar
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [],
            ),
          ),
          //userName
          Container(),
          //Room Code
         /* Container(
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              child: const Text(
                "Room Code ",
                style: TextStyle(
                  fontFamily: 'work_of_fortress',
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomKey("",avtar)));
              },
            ),
          ),*/
          Container(
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
             
          ),
        ],
      ),
    );
  }
}

Widget buildCard() => Container(
      color: Colors.red,
    );
