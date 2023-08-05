import 'package:flutter/material.dart';
import 'package:projuect_1/button.dart';
import 'package:projuect_1/home.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Hello',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'This is Personal page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Image.asset('assets/1.png'),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            child: Button(color: Colors.black, name: 'Next'))
        ],
      ),
    );
  }
}
