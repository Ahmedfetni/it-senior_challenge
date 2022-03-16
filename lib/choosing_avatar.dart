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
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: ColorsOfTheGame.background,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ColorsOfTheGame.background // Background color
                        ),
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
                    style: ElevatedButton.styleFrom(
                        primary: ColorsOfTheGame.background // Background color
                        ),
                    onPressed: () {
                      setState(() {
                        avatar = Avatar.girl;
                      });
                    },
                  ),
                ),
                Container(
                  color: ColorsOfTheGame.background,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ColorsOfTheGame.background // Background color
                        ),
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
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              theUserName,
              style: const TextStyle(
                color: Color.fromARGB(255, 250, 241, 172),
                fontFamily: 'work_of_fortress',
                fontSize: 30,
              ),
            ),
          ),
          //Room Code
          Container(
            color: ColorsOfTheGame.background,
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 250, 241, 172), // Background color
              ),
              child: const Text(
                "Room Code ",
                style: TextStyle(
                  fontFamily: 'work_of_fortress',
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoomKey(theUserName, avatar,numberOfRound),
                  ),
                );
              },
            ),
          ),
          Container(
            color: ColorsOfTheGame.background,
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:const  Color.fromARGB(255, 250, 241, 172), // Background color
              ),
              child: const Text(
                "Create Room",
                style: TextStyle(
                  fontFamily: 'work_of_fortress',
                  fontSize: 30,
                  color: Colors.black,
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
          Container(
            color: ColorsOfTheGame.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Wee need to add
                ElevatedButton(
                  onPressed: () {
                    if (numberOfRound > 0) {
                      setState(() {
                        numberOfRound--;
                      });
                    }
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'work_of_fortress',
                      fontSize: 30,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 250, 241, 172), // Background color
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 250, 241, 172),
                  ),
                  child: Text("$numberOfRound",
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'work_of_fortress',
                        fontSize: 40,
                      )),
                ),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (numberOfRound < 4) {
                      setState(() {
                        numberOfRound++;
                      });
                    }
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'work_of_fortress',
                      fontSize: 30,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 250, 241, 172), // Background color
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
