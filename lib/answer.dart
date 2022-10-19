import 'package:flutter/material.dart';

class answer extends StatefulWidget {
  answer({Key? key, required this.index, required this.fun, required this.fun2})
      : super(key: key);
  int index;
  final fun;
  final fun2;

  @override
  State<answer> createState() => _answerState();
}

class _answerState extends State<answer> {
  int score = 0;
  List a = [
    [
      {'answer': 'black', 'score': 10},
      {'answer': 'white', 'score': 0},
      {'answer': 'red', 'score': 0}
    ],
    [
      {'answer': 'koshary', 'score': 1000},
      {'answer': 'pizza', 'score': 0}
    ],
    [
      {'answer': '1', 'score': 10},
      {'answer': '2', 'score': 0}
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return widget.index < 3
        ? Column(
            children: [
              ...a[widget.index].map((e) => GestureDetector(
                    onTap: () {
                      score += e['score'] as int;
                      widget.fun();
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(e['answer']),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )),
            ],
          )
        : Column(
            children: [
              Container(
                child: Text(
                  'your score is $score',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  widget.fun2();
                  score=0;
                  setState(() {
                    
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.red,
                  child: Text(
                    'restart',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
              )
            ],
          );
  }
}
