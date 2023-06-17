import 'package:flutter/material.dart';
import 'package:game/data.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<Loto> lotos = [
    Loto(LotoType: 'Bedlu', totalNumberOfUserRequierd: 100, posibleWin: 1000),
    Loto(LotoType: 'Awgchew', totalNumberOfUserRequierd: 100, posibleWin: 1000),
    Loto(LotoType: 'Belete', totalNumberOfUserRequierd: 100, posibleWin: 1000),
    Loto(LotoType: 'Tihune', totalNumberOfUserRequierd: 100, posibleWin: 1000)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('More on players'),
       backgroundColor: Colors.grey[600],
      ),
      body:  ListView.builder(
          itemCount: lotos.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {

                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(lotos[index].LotoType),
                        Text('last seen at 00:36AM',
                        style: TextStyle(
                          fontWeight: FontWeight.w100
                        ),),
                      ],
                    ),
                    SizedBox(width: 2,),
                    Column(children: [
                      Text('Max 3000'),
                      Text('Min 200'),
                    ],
                    ),
                    TextButton(onPressed: () {}, child: Text('Invite'))
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/img1.jpg'),
                ),
              ),
            );
          }),
    );
  }
}
