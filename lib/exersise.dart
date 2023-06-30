import 'package:flutter/material.dart';

class Exc extends StatelessWidget {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['Karan', 'Akshit', 'Gaurav', 'Aasif']
  };

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Excersise'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          playingOption('first one', 3, 7, 100, width),
          SizedBox(height: 2,),
          playingOption('first one', 3, 7, 100, width)
        ],
      )
      
    );
  }
}

Widget playingOption(String Id, int remaingUser, int totalUserAdded,
    int MaxposibleGain, double width) {
  return Container(
    height: 100,
    width: width,
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    child: Stack(
      children: [
        Positioned(
          left: width*0.4,
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
          left: width*0.2,
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
          left: width*0.7,
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
          left: width*0.8,
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
