import 'package:flutter/material.dart';
import 'package:skribbl_game/choosing_avatar.dart';
import 'colors_of_the_game.dart';
import 'icon_font.dart';

class Game extends StatefulWidget {
  Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  final _controller = TextEditingController();
  var userName = "Ssam";
  @override
  Widget build(BuildContext context) {
    const color = const Color.fromARGB(255, 250, 241, 172);
    return Scaffold(
      backgroundColor: ColorsOfTheGame.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: const IconFont(35),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            foregroundDecoration: const BoxDecoration(shape: BoxShape.circle),
            child: TextField(
              controller: _controller,
              style: const TextStyle(
                  fontFamily: 'work_of_fortress',
                ), 
              decoration: const InputDecoration(
                hintText: "Nickname",
                fillColor: color,
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
                userName = _controller.text;
                
              });
              //MaterialPageRoute(builder: (context) => gotoPage)
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoosingAvatar(userName)));
              
            },
            color: const Color.fromARGB(255, 255, 199, 0),
            child:const  Text("➡️",style: TextStyle(
              fontSize: 20,
              fontFamily:'work_of_fortress', 
            ),),
          )
        ],
      ),
    );
  }
}
