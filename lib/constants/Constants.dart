// SAbet Ha ro Dar Constants Gharar Midim

import 'package:quizz_like_application/data/Quetions.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = "مهشور ترین شعبده باز جهان کیست ؟";
  firstQuestion.imageNameNumber = "1";
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    "امیر احمد ادیبی ",
    "دیوید کاپرفیلد ",
    "هری هودینی ",
    "عارف جلالی ",
  ];
  var secondQuestion = Question();
  secondQuestion.questionTitle = "چه کشوری ایستگاه فضای میر را بنا کرد؟؟";
  secondQuestion.imageNameNumber = "2";
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    "روسیه",
    "آمریکا",
    "چین",
    "هند",
  ];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = "مهشور ترین تریدر  جهان کیست ؟";
  thirdQuestion.imageNameNumber = "3";
  thirdQuestion.correctAnswer = 3;
  thirdQuestion.answerList = [
    "امیر احمد ادیبی ",
    "دیوید اکبری ",
    "هری ممد نژاد ",
    "عارف جلالی ",
  ];

  var fourthQuestion = Question();
  fourthQuestion.questionTitle = "مهشور ترین غواص  جهان کیست ؟";
  fourthQuestion.imageNameNumber = "4";
  fourthQuestion.correctAnswer = 3;
  fourthQuestion.answerList = [
    "عارف جلالی",
    "ممد دانادل ",
    " ممد نژاد ",
    "همین گزینه درسته",
  ];

  var fifthQuestion = Question();
  fifthQuestion.questionTitle = "فرد در عکس در حال چه کاریست ؟";
  fifthQuestion.imageNameNumber = "5";
  fifthQuestion.correctAnswer = 2;
  fifthQuestion.answerList = [
    "آب بازی",
    "بازی کردن",
    "ماهی گیری",
    "به مولا که نمیدونم",
  ];
  var sixthQuestion = Question();
  sixthQuestion.questionTitle = "مهشور ترین شیمی دان ایران؟";
  sixthQuestion.imageNameNumber = "6";
  sixthQuestion.correctAnswer = 0;
  sixthQuestion.answerList = [
    "سید محمد بلورچیانه",
    "هاشم شرقی	  ",
    " عباس شفیعی",
    "غلامحسین حکیم الهی	",
  ];

  var seventhQuestion = Question();
  seventhQuestion.questionTitle = "قهرمان پرش با نیزه کیست ؟";
  seventhQuestion.imageNameNumber = "7";
  seventhQuestion.correctAnswer = 3;
  seventhQuestion.answerList = [
    "عارف جلالی",
    "ممد دانادل ",
    " ممد نژاد ",
    "همین گزینه درسته",
  ];

  var eightQuestion = Question();
  eightQuestion.questionTitle =
      "سوال های اخر رو برنامه نویس حال نداشته اضافه کنه؟";
  eightQuestion.imageNameNumber = "8";
  eightQuestion.correctAnswer = 3;
  eightQuestion.answerList = [
    " ",
    " ",
    " ",
    "همین گزینه درسته",
  ];

  var ninthQuestion = Question();
  ninthQuestion.questionTitle =
      "سوال های اخر رو برنامه نویس حال نداشته اضافه کنه؟";
  ninthQuestion.imageNameNumber = "9";
  ninthQuestion.correctAnswer = 3;
  ninthQuestion.answerList = [
    " ",
    " ",
    " ",
    "همین گزینه درسته",
  ];
  return [
    firstQuestion,
    secondQuestion,
    thirdQuestion,
    fourthQuestion,
    fifthQuestion,
    sixthQuestion,
    seventhQuestion,
    eightQuestion,
    ninthQuestion,
  ];
}
