import 'package:flutter/material.dart';

class Advert extends StatefulWidget {
  const Advert({super.key});

  @override
  State<Advert> createState() => _AdvertState();
}

class _AdvertState extends State<Advert> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
       Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
       Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
        Adcontainer('Cid', 'Tid', 'name'),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget Adcontainer(String Cid, String Tid, String name) {
  return Container(
    width: 60,
    height: 60,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child:  Row(
      children: [
        const CircleAvatar(
          minRadius: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Cid),
            Text(Tid),
            Text(name),
          ],
        )
      ],
    ),
  );
}
