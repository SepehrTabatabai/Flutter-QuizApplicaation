import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    this.correctAnswer = 0,
  });
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        centerTitle: true,
        title: Text(
          "نتیجه آزمون",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage("assets/images/cup.png"),
              ),
            ),
            Text(
              "پاسخ های صحیح شما ",
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "$correctAnswer",
              style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
