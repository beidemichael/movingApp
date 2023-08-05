import 'package:flutter/material.dart';

class PopupWindow extends StatelessWidget {
  const PopupWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 12, 207, 32),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
