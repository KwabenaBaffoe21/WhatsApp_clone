import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: const Color(0xff075e54),
          primaryColorLight: const Color(0xff08d261)),
      home: const Loadapp(),
    );
  }
}
