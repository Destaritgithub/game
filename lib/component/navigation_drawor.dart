import 'package:flutter/material.dart';
import 'package:game/component/feed.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Navigation_drawor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey,
        child: ListView(
          children: [
            buildHeader(
                urlImage: 'assets/img1.jpg',
                name: 'Bedlu',
                email: 'Bedlu@gmail.com',
                onClicked: () {
                  Navigator.pushNamed(context, '/');
                }),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                 const  Divider(color: Colors.white70),
                  const SizedBox(
                    height: 10,
                  ),
                  buildMenuItem(
                      text: 'Loto Game',
                      icon: Icons.filter_tilt_shift,
                      onClicked: () {
                        selectedItem(context, 0);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  buildMenuItem(
                      text: 'Gussing Game',
                      icon: Icons.sports_baseball,
                      onClicked: () {
                        selectedItem(context, 1);
                      }),
                  const SizedBox(height: 12),
                  Divider(color: Colors.grey[900], height: 20),
                  const SizedBox(height: 12),
                  buildMenuItem(
                      text: 'New Team',
                      icon: Icons.group,
                      onClicked: () {
                       selectedItem(context, 2);
                      }),
                  buildMenuItem(
                      text: 'Contacts',
                      icon: Icons.person,
                      onClicked: () {
                        selectedItem(context, 3);
                      }),
                  buildMenuItem(
                      text: 'Log Out',
                      icon: Icons.logout,
                      onClicked: () async {
                       await FirebaseAuth.instance.signOut();
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
  required VoidCallback onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: AssetImage(urlImage)),
           const  SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style:const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          const  Spacer(),
          const  CircleAvatar(
              radius: 24,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child: Icon(Icons.add_comment_outlined, color: Colors.white),
            )
          ],
        ),
      ),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.black;
  const  hoverColor = Colors.white70;

  return ListTile(
    leading:
        Icon(icon, color: Colors.grey[700], size: 25, weight: Checkbox.width),
    title: Text(text,
        style: const TextStyle(
          color: color,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Feed(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Feed(),
      ));
      case 2:
      Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Feed(),
          ));
          case 3:
          Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Feed(),
      ));
      case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Feed(),
      )
      );
      break;
  }
}
