// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'dart:ui';
import 'package:flutter/material.dart';

class LogOutMessage extends StatelessWidget {
  TextStyle textStyle = const TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 400,
                width: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
