import 'dart:io';

class Question {
  String thequestion;
  List<String> optains;
  int trueanswer;
  Question(this.thequestion, this.optains, this.trueanswer);
}

class Test {
  List<Question> questions;
  int mark = 0;
  Test(this.questions);
  int start() {
    for (int i = 0; i < questions.length; i++) {
      print("* -${i + 1}-  ${questions[i].thequestion}");
      for (int j = 0; j < questions[i].optains.length; j++) {
        print("     ${j + 1} =  ${questions[i].optains[j]}");
      }
      print("enter the answer");
      String? an = stdin.readLineSync();
      if (an != null && int.tryParse(an) == (questions[i].trueanswer)) {
        mark++;
      }else {
        continue;
      }
    }
    return mark;
  }
}

main() {
  List<Question> questions = [
    Question("whate your name? ", ["Ali", "balkies", "Nasour"], 1),
    Question("whate your name? ", ["Ali", "balkies", "Nasour"], 2),
    Question("whate your name? ", ["Ali", "balkies", "Nasour"], 1),
  ];
  Test t = Test(questions);
  int mark = t.start();
  print("you get ${mark} points");
}
