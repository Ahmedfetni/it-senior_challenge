import 'package:flutter/material.dart';
import 'avatar.dart';

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
  Avatar avatar;
  RoomKey(this.userName,this.avatar,{Key? key}) : super(key: key);

  @override
  _RoomKeyState createState() => _RoomKeyState();
}

class _RoomKeyState extends State<RoomKey> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
