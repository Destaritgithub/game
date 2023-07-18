// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:game/component/advert.dart';
import 'package:game/provider/ticket_provider.dart';
import 'package:marquee/marquee.dart';
import 'package:game/data.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class Listt extends StatefulWidget {
  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  get ticketData => null;

  @override
  Widget build(BuildContext context) {
    final myTicket = context.watch<TicketProvider>().ticket;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            margin: const EdgeInsets.only(top: 1, bottom: 1),
            height: 65,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(217, 180, 192, 190),
            ),
            child: const Advert(),
          ),
          
          playingOption(
              'Class Id', 'Ticketd', 'Statment', 3, 7, 100, 10, screenWidth),
          const SizedBox(
            height: 1,
          ),
          playingOption(
              'ClassId', 'Ticketd', 'Statment', 3, 7, 100, 10, screenWidth),
          const SizedBox(
            height: 1,
          ),
          playingOption(
              'ClassId', 'Ticketd', 'Statment', 3, 7, 100, 10, screenWidth),
          const SizedBox(
            height: 1,
          ),
          playingOption(
              'ClassId', 'Ticketd', 'Statment', 3, 7, 100, 10, screenWidth),
          const SizedBox(
            height: 1,
          ),
          playingOption(
              'ClassId', 'Ticketd', 'Statment', 3, 7, 100, 10, screenWidth),
          const SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}

Widget playingOption(
    String ClassId,
    String Ticketd,
    String Statment,
    int remaingUser,
    int totalUserAdded,
    int MaxposibleGain,
    int price,
    double width) {
  return Container(
    height: 100,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromARGB(218, 223, 231, 229),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 20,
          top: 2,
          child: Text(
            ClassId,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 30,
          child: Text(
            'be${price}bra$MaxposibleGain${remaingUser}yekerew',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Positioned(
          left: 210,
          top: 2,
          child: Text(
            '$remaingUser',
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        Positioned(
          left: 330,
          top: 3,
          child: Text(
            Ticketd,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: 210,
          top: 24,
          child: Text(
            '$totalUserAdded',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Positioned(
          left: 330,
          top: 24,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: const Text('New')),
        ),
        Positioned(
          left: 180,
          bottom: 0,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )),
              ),
              onPressed: () {},
              child: const Text(
                'Goto',
                style: TextStyle(color: Color.fromARGB(255, 6, 197, 86)),
              )),
        )
      ],
    ),
  );
}
