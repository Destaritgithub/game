import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:game/data.dart';

class Listt extends StatefulWidget {
  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  List<Game> game1 = [
    Game(
        TicketId: 'Ticket number one',
        numberOfPayer: 4,
        numberOfRemainigpayers: 6,
        posibleAmountOfWin: 100),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: screenWidth,
              height: 60,
              padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(60)),
              child: Marquee(
                text: 'winers here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 20.0,
                velocity: 100.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                accelerationDuration: Duration(seconds: 1),
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
              )),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
            SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
            SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
          SizedBox(
            height: 2,
          ),
          playingOption('first one', 3, 7, 100, screenWidth),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}

Widget playingOption(String Id, int remaingUser, int totalUserAdded,
    int MaxposibleGain, double width) {
  return Container(
    height: 100,
    width: width,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10)),
    child: Stack(
      children: [
        Positioned(
          left: width * 0.4,
          top: 5,
          child: Text(
            Id,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: width * 0.2,
          top: 25,
          child: Text(
            '$remaingUser',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: width * 0.4,
          top: 25,
          child: Text(
            '$MaxposibleGain',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: width * 0.7,
          top: 25,
          child: Text(
            '$totalUserAdded',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: width * 0.8,
          top: 30,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              onPressed: () {},
              child: Text('Goto')),
        )
      ],
    ),
  );
}
