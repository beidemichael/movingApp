import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projuect_1/BottomSheetWidgets/BottomSheetScreen.dart';
import 'package:projuect_1/PopupWindow/PopUpWindow.dart';
import 'package:projuect_1/logout.dart';

import 'BottomScreens/Screen1.dart';
import 'BottomScreens/Screen2.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndexVariable = 0;
  bool expanded = false;

  void expand() {
    setState(() {
      expanded = !expanded;
    });
  }

  void onTapped(newIndex) {
    setState(() {
      currentIndexVariable = newIndex;
    });
  }

  List screens = [
    Screen1(),
    Screen2(),
  ];

  showCustomBottomSheet() {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Center(
          child: BottomSheetScreen(),
        );
      },
    );
  }

  showPopupWindow() {
    showDialog(
      context: context,
      builder: (context) {
        return PopupWindow();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          screens[currentIndexVariable],
          Positioned(
            bottom: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                // expand();
              },
              child: Center(
                child: AnimatedContainer(
                  curve: Curves.easeInOut,
                  duration: Duration(seconds: 1),
                  width: 90,
                  height: expanded ? 90 : 460,
                  child:
                      //  expanded
                      //     ? Icon(Icons.add)
                      //     :
                      Stack(
                    children: [
                      Positioned(
                        left: 10,
                        right: 10,
                        top: 10,
                        child: CustomAnimatedContainer(
                            160, Colors.green, Icons.settings),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        top: 10,
                        child: CustomAnimatedContainer(
                            250, Colors.yellow, Icons.person),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        top: 10,
                        child: CustomAnimatedContainer(
                            340, Colors.red, Icons.contacts),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                            onTap: () {
                              expand();
                            },
                            child: CustomAnimatedContainer(
                                430, Colors.blue, Icons.arrow_upward)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                // showCustomBottomSheet();
                showPopupWindow();
              },
              child: Center(
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                showCustomBottomSheet();
              },
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget CommonContainer(color, icon) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          )
        ],
      ),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }

  Widget CustomAnimatedContainer(double height, color, icon) {
    return AnimatedContainer(
      height: expanded ? 70 : height,
      width: 70,
      curve: Curves.easeInOut,
      duration: Duration(seconds: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [CommonContainer(color, icon)],
      ),
    );
  }
}
