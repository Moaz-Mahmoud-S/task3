import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;

  Result(this.score);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
            child:
            Column
              (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("مبرررررررررررررررررررررررروك ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage("https://i.ytimg.com/vi/iKeo0Vb2uag/hqdefault.jpg"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Text("النتيجه هي $score",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
