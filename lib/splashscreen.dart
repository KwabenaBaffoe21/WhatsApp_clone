import 'package:flutter/material.dart';
import 'package:untitled/Home.dart';

class Loadapp extends StatefulWidget {
  const Loadapp({Key? key}) : super(key: key);

  @override
  State<Loadapp> createState() => _LoadappState();
}

class _LoadappState extends State<Loadapp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 390.0,
          ),
          Center(
            child: Icon(
              Icons.whatsapp,
              size: 130,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          const SizedBox(
            height: 390.0,
          ),
          const Text(
            'From',
            style: TextStyle(fontSize: 15.0),
          ),
          const Text(
            'Facebook',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          )
        ],
      ),
    );
  }
}
