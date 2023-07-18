import 'package:flutter/material.dart';
import 'package:game/pages/confirmOrder.dart';
import 'package:game/pages/home.dart';
import 'package:game/pages/register.dart';
import 'package:game/pages/login.dart';
import 'package:game/component/feed.dart';
import 'package:game/exersise.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:game/provider/ticket_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'provider/ticket_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    
    ChangeNotifierProvider<TicketProvider>(
    create: (_) =>TicketProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/register': (context) =>  Register(),
        '/feed': (context) => const Feed(),
        '/login': (context) => Login(),
        '/exc': (context) => Exc(),
        '/confirm':(context) => const ConfirmOrder(),
        
      },
    ),
  )
  );
}
