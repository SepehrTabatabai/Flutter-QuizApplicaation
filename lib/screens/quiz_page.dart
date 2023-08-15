import 'package:flutter/material.dart';
import 'package:quizz_like_application/constants/Constants.dart';
import 'package:quizz_like_application/data/Quetions.dart';
import 'package:quizz_like_application/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

int shownQuestionIndex = 0;
Question? selectedQuestion;
bool inFinalAnswerSubmited = false;
int correctAnswer = 0;
int wrongAnswer = 0;

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          'سوال ${shownQuestionIndex + 1} از ${getQuestionsList().length}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              height: 300,
              image: AssetImage("assets/images/$questionImageIndex.png"),
            ),
            SizedBox(height: 30.0),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(height: 30.0),
            ...List.generate(4, (index) => gerOptionItems(index)),
            if (inFinalAnswerSubmited)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  maximumSize: Size(200.0, 50.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ResultScreen(correctAnswer: correctAnswer),
                    ),
                  );
                },
                child: Text(
                  "مشاهده نتایج کوییز",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget gerOptionItems(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        }
        if (shownQuestionIndex == getQuestionsList().length - 1) {
          inFinalAnswerSubmited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionsList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
