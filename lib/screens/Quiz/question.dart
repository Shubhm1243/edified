import 'package:edified/screens/Quiz/quiz_brain.dart';

import 'question.dart';

class QuizBrain{

  var _questionNo = 0;

  final List<Question> questionBank = [
    Question('A queue cannot be implemented using in an array.', false),
    Question('Every node in a linked list has two components: one to store the relevant information and one to store the address.', true),
    Question('The address of the first node in a linked list is stored in a separate location/pointer, called the head.', true),
    Question('Each node of a singly linked list has at least four components', false),
    Question('The link component of each node is a pointer.', true),
    Question('Operations such as search, insert, and delete require a linked list tobe sorted', false),
    Question(
        'Building a linked list forward places the new item to be added at the beginning of the linkedlist.',
        false),
    Question(
        'The algorithms to implement the operations search, insert, and remove are the same for sorted and unsorted list.',
        false),
    Question(
        'An objective way to compare two algorithms is by comparing their execution time irrespective of thebmachines',
        false),
    Question(
        'Most appropriate data structure to print a list of elements in reverse order is Queue databstructure',
        false),
  ];

  String getQuestionText(){
    return questionBank[_questionNo].questionText;
  }

  bool getCorrectAnswer(){
    return questionBank[_questionNo].questionAnswer;
  }

  void nextQuestion(){
    if (_questionNo<questionBank.length-1){
      _questionNo++;
    }
  }

  bool isFinished() {
    if (_questionNo >= questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNo = 0;
  }

}