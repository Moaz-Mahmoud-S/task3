import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';

import 'QuizScreen.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(home: content());
  }
}

class content extends StatelessWidget {

  @override
  SafeArea build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
              color: Colors.lightBlueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      child: Image(
                        image: NetworkImage(
                            "https://cdn.elmostaqbal.com/elmostaqbal/uploads/2020/02/www.elmostaqbal.com_2020-02-11_11-28-18_778058-300x225.jpg"),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Q",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UIZ  ",
                        style: TextStyle(color: Colors.black, fontSize: 45),
                      ),
                      Text(
                        "EL",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "-Nazer",
                        style: TextStyle(color: Colors.black, fontSize: 45),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizScreen()),
                        );
                      },
                      child: Text(
                        "! جاهزززز",
                        style: TextStyle(fontSize: 35, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
