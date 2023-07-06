import 'package:flutter/material.dart';
import 'package:game/pages/home.dart';
import 'package:game/pages/register.dart';
import 'package:game/component/feed.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/exc',
    routes: {
      '/': (context) => Home(),
      '/register': (context) => Register(),
      '/feed': (context) => Feed(),
      // '/location': (context) => ChooseLocation(),
    },
  ));
}
