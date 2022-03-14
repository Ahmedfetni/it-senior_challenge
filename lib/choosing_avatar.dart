import 'package:flutter/material.dart';
import 'colors_of_the_game.dart';
import 'avatar.dart';
import 'room_key.dart';
import 'create_room.dart';

class ChoosingAvatar extends StatefulWidget {
  String userName;

  ChoosingAvatar(this.userName, {Key? key}) : super(key: key);

  @override
  _ChoosingAvatarState createState() => _ChoosingAvatarState(userName);
}

class _ChoosingAvatarState extends State<ChoosingAvatar> {
  var avatar = Avatar.boy;
  String theUserName;
  var numberOfRound = 1;
  _ChoosingAvatarState(this.theUserName);

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
              children: [
                Container(
                  child: ElevatedButton(
                    child: Avatar.boy,
                    onPressed: () {
                      setState(() {
                        avatar = Avatar.boy;
                      });
                    },
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    child: Avatar.girl,
                    onPressed: () {
                      setState(() {
                        avatar = Avatar.girl;
                      });
                    },
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    child: Avatar.theRock,
                    onPressed: () {
                      setState(() {
                        avatar = Avatar.theRock;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          //userName
          Container(),
          //Room Code
          Container(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoomKey(theUserName, avatar),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              child: const Text(
                "Create Room",
                style: TextStyle(
                  fontFamily: 'work_of_fortress',
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateRoom(),
                  ),
                );
              },
            ),
          ),
          Container(child: Row(
            children: [
              // Wee need to add
              ElevatedButton(
                onPressed: () {
                  print("aaaa");
                },
                child: Text("${numberOfRound}"),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}

Widget buildCard() => Container(
      color: Colors.red,
    );
