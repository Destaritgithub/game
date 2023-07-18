import 'package:flutter/material.dart';
import 'package:game/component/listof_games.dart';
import 'package:game/component/navigation_drawor.dart';
// ignore: depend_on_referenced_packages
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // set the color of the icon
          size: 50.0, // set the size of the icon
        ),
        title: const Text(
          'Logo',
          style: TextStyle(color: Colors.black,
           fontWeight: FontWeight.w900,
          fontSize: 24),
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
                    return  Row(
                      children: [
                       const Column(
                          children: [
                            Text('Alemu' ,
                            style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Row(
                              
                              children: [
                                Text('****',
                                style: TextStyle(
                                      color: Color.fromARGB(255, 35, 34, 34),
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.visibility_off,
                                size: 20),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 4,),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey),
                            minimumSize: MaterialStateProperty.all(const Size(20, 24))
                          ),
                          onPressed: (){

                        }, child: const Text('Deposit')),
                        Container(
                          child:  Stack(
                            children: [
                             const Positioned(
                                right: 5,
                                top: 6,
                                child: Text('2',
                                style: TextStyle(
                                  color: Colors.red
                                ),
                                )),
                                IconButton(
                                  iconSize: 30.0,
                                  onPressed: (){

                                }, icon: const Icon(Icons.notifications,
                              color: Colors.white,
                              size: 40,))
                              
                              
                            ],
                          ),
                        ),
                        IconButton(
                          iconSize: 30.0,
                          onPressed: (){

                        }, icon: const Icon(Icons.person,
                        size: 30,
                        
                        ))
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(const Color.fromARGB(255, 138, 116, 250))),
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
      drawer: Navigation_drawor(),
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
