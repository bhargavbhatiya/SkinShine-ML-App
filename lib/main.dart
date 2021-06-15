import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/HomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/home',
    debugShowCheckedModeBanner: false,
    routes: {
      '/home': (context) => MyApp(),
    },
  ));
}
