import 'package:flutter/material.dart';

class question extends StatelessWidget {
  question({Key? key, required this.index}) : super(key: key);
  int index;
  List q = [
    'what\'s your fav color ?',
    'what\'s your fav food ?',
    'what\'s your fav player ?'
  ];

  @override
  Widget build(BuildContext context) {
    return index<3?Text(
      q[index],
      style: TextStyle(fontSize: 30, color: Colors.black),
    ):Container();
  }
}
