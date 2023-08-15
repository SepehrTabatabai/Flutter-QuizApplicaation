import 'package:flutter/material.dart';
import 'package:quizz_like_application/screens/quiz_page.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          "کوییز آف کویین",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/welcome.png"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[700],
                minimumSize: Size(200.0, 40.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
              child: Text(
                "شروع بازی ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
