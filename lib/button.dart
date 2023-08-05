import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button extends StatelessWidget {
  String name;
  Color color;
  Button({
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
          ),
        ),
      ),
    );
  }
}
