import 'package:flutter/material.dart';
import 'package:mynelayan/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Nelayan',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

