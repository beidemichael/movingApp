import 'package:flutter/material.dart';
import 'package:projuect_1/button.dart';

import '../home.dart';

class Business extends StatelessWidget {
  const Business({super.key});

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
              'This is Business page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Image.asset('assets/undraw_Business_chat_re_gg4h.png'),
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
