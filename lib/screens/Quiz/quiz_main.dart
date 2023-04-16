import 'package:edified/screens/Quiz/question.dart';
import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Quizpage(),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {

  static String id = "quiz_screen";

  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Widget> scorekeeper = [];

  int correctanscounter = 0;

  void scoreCheck(bool answerPicked) {
    bool correctanswers = quizbrain.getCorrectAnswer();

    setState(() {
      if (quizbrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'Score is $correctanscounter / ${quizbrain.questionBank.length}',
          image: Image.asset(
            'assets/image/Untitled.jpg',
          ),
        ).show();

        quizbrain.reset();
        scorekeeper = [];
        correctanscounter = 0;
        //totalScore=0;

      } else {
        if (answerPicked == correctanswers) {
          correctanscounter++;
          scorekeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scorekeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizbrain.nextQuestion();
      }
    });
  }

  QuizBrain quizbrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizbrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  onPressed: () {
                    setState(() {
                      scoreCheck(true);
                    });
                  },
                  child: Text('True',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      scoreCheck(false);
                    });
                  },
                  child: const Text('False',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Row(
              children: scorekeeper,
            ),
          ],
        ),
      ),
    );
  }
}
