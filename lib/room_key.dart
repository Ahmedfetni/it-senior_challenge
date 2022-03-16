import 'package:flutter/material.dart';
import 'avatar.dart';
import 'colors_of_the_game.dart';

/*
TextField(
              controller: _controllerRoomKey,
              style: const TextStyle(
                fontFamily: 'work_of_fortress',
              ),
              decoration: const InputDecoration(
                hintText: "Nickname",
                fillColor: const Color.fromARGB(255, 250, 241, 172),
                filled: true,
                hintStyle: TextStyle(
                  fontFamily: 'work_of_fortress',
                ),
              ),

              //maxLength:15,
              //obscureText: false,
            )*/
class RoomKey extends StatefulWidget {
  String userName;
  Image avatar;
  int numberOfrounds;

  RoomKey(this.userName, this.avatar, this.numberOfrounds, {Key? key})
      : super(key: key);

  @override
  _RoomKeyState createState() => _RoomKeyState(
        userName,
        avatar,
        numberOfrounds,
      );
}

class _RoomKeyState extends State<RoomKey> {
  String userName;
  Image avatar;
  int numberOfrounds;
  String roomKey = "";
  final _controller = TextEditingController();
  _RoomKeyState(
    this.userName,
    this.avatar,
    this.numberOfrounds,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsOfTheGame.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: TextField(
              controller: _controller,
              style: const TextStyle(
                fontFamily: 'work_of_fortress',
              ),
              decoration: const InputDecoration(
                hintText: "Code",
                fillColor: Color.fromARGB(255, 250, 241, 172),
                filled: true,
                hintStyle: TextStyle(
                  fontFamily: 'work_of_fortress',
                ),
              ),

              //maxLength:15,
              //obscureText: false,
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                roomKey = _controller.text;
              });
              //MaterialPageRoute(builder: (context) => gotoPage)
              //Navigator.push(
              //    context,
              //    MaterialPageRoute(
              //        builder: (context) => ChoosingAvatar(userName)));
              print("$roomKey");
            },
            color: const Color.fromARGB(255, 255, 199, 0),
            child: const Text(
              "➡️",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'work_of_fortress',
              ),
            ),
          )
        ],
      ),
    );
  }
}
