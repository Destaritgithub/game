import 'package:flutter/material.dart';
import 'package:game/pages/home.dart';
import 'package:game/pages/register.dart';
import 'package:game/pages/login.dart';
import 'package:game/component/feed.dart';
import 'package:game/exersise.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/exc',
    routes: {
      '/': (context) => Home(),
      '/register': (context) => Register(),
      '/feed': (context) => Feed(),
      '/login': (context) => Login(),
      '/exc': (context) => Exc(),
    },
  ));
}
