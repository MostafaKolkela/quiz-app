import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  rst(){
    index=0;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                question(index: index),
                SizedBox(
                  height: 15,
                ),
                answer(
                    index: index,
                    fun: () {
                        index++;
                        setState(() {});
                    },fun2: rst,)
              ],
            ),
          )),
    );
  }
}
