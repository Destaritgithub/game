import 'package:flutter/material.dart';
import 'package:game/component/listof_games.dart';
import 'package:game/component/navigation_drawor.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: const Text(
          'Logo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(217, 180, 192, 190),
        elevation: 0.0,
        actions: [
          ButtonBar(
            children: [
              StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const Text('Balance');
                  } else {
                    return TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ));
                  }
                },
              ),
            ],
          ),
          const Icon(Icons.notification_add_rounded),
        ],
      ),
      drawer:Navigation_drawor(), 
      body: Listt(),
      floatingActionButton: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/feed');
          },
          child: Container(
            height: 60,
            width: 60,
            //color: Colors.grey,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
            child: Icon(
              Icons.edit,
              size: 30,
              color: Colors.white,
            ),
          )),
    );
  }
}


Widget buildSearchField() {
  final color = Colors.white;

  return TextField(
    style: TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Search',
      hintStyle: TextStyle(color: color),
      prefixIcon: Icon(Icons.search, color: color),
      filled: true,
      fillColor: Colors.white12,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: color.withOpacity(0.1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.1)),
      ),
    ),
  );
}
