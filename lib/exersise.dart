// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:game/function/authfunction.dart';
import 'package:game/function/databaseFunction.dart';

class Exc extends StatefulWidget {
  @override
  State<Exc> createState() => _ExcState();
}

class _ExcState extends State<Exc> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Excersise'),
        centerTitle: true,
      ),
  

    );
  }
}
