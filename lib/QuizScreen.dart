import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Result.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen();

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> questione = [
        "who is ths guy?",
        "who is this woman?",
        "who is this guy"
      ],
      answer = ["Atef", "Salah", "gwaher", "anshrah", "ashour", "sayed"],
      imageurl = [
        "https://media.filfan.com/NewsPics/FilfanNew/large/206106_0.jpg",
        "http://img.innfrad.com/imagecontent/308192-%D8%A8%D8%AA%D8%B1%D8%AF-%D8%B9%D9%84%D9%8A%D8%A7.png",
        "https://i.ytimg.com/vi/blO-RMMM-Pk/hqdefault.jpg",
      ];
  int index1 = 0, index2 = 0, score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 530,
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image(image: NetworkImage(imageurl[index1]))),
              Text(
                questione[index1],
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      score++;
                      index1++;
                      index2 += 2;
                    });
                    if (index1 == questione.length) {
                      print("iam here");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Result(score)),
                      );
                    };
                  },
                  child: Text(
                    answer[index2],
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(minimumSize: Size(250, 50))),
              ElevatedButton(
                  onPressed: () {
                      setState(() {
                        index1++;
                        index2 += 2;
                      });
                      if (index1 == questione.length) {
                        print("iam here");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Result(score)),
                        );
                      };
                    },
                  child: Text(
                    answer[index2 + 1],
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(minimumSize: Size(250, 50))),
            ],
          ),
        ),
      ),
    );
  }
}
