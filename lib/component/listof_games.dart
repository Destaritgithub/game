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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Row(
              children: [
                Container(
                    width: screenWidth,
                    height: 60,
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(60)),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Row(
              children: [
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(60)),
                  child: Column(
                    children: [
                      Text('Ticket Number one'
                      ,
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('+7'),
                              Icon(Icons.person),
                            ],
                          ),
                          Text('100'),
                          Column(
                            children: [
                              Text('-3'),
                              Icon(Icons.person),
                            ],
                          )
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Play Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 76, 5, 4),
                                backgroundColor:
                                    const Color.fromARGB(96, 244, 159, 159)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),

          // option of items

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Row(
              children: [
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(60)),
                  child: Column(
                    children: [
                      Text(
                        'Ticket number Two',
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('+7'),
                              Icon(Icons.person),
                            ],
                          ),
                          Text('100'),
                          Column(
                            children: [
                              Text('-3'),
                              Icon(Icons.person),
                            ],
                          )
                        ],
                      ),
                      TextButton(onPressed: () {}, child: Text('Play Now'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Row(
              children: [
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(60)),
                  child: Column(
                    children: [
                      Text(
                        'Ticket number Three',
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('+7'),
                              Icon(Icons.person),
                            ],
                          ),
                          Text('100'),
                          Column(
                            children: [
                              Text('-3'),
                              Icon(Icons.person),
                            ],
                          )
                        ],
                      ),
                      TextButton(onPressed: () {}, child: Text('Play Now'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(60)),
                  child: Column(
                    children: [
                      Text(
                        'Ticket number Four',
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('+7'),
                              Icon(Icons.person),
                            ],
                          ),
                          Text('100'),
                          Column(
                            children: [
                              Text('-3'),
                              Icon(Icons.person),
                            ],
                          )
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Play Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 76, 5, 4),
                                backgroundColor:
                                    const Color.fromARGB(96, 244, 159, 159)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
