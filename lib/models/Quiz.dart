import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quizapp/Home.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: (() {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            title: Text("Wanna Try Again?"),
                            backgroundColor: Color.fromARGB(255, 184, 183, 183),
                            actions: [
                              Row(
                                children: [
                                  ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 63, 63, 63)),
                                      onPressed: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return Home();
                                        })));
                                      },
                                      icon: Icon(Ionicons.log_out),
                                      label: Text("Exit")),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 63, 63, 63)),
                                      onPressed: () {
                                        Navigator.pop(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return Quiz();
                                        })));
                                      },
                                      icon: Icon(Ionicons.reload_circle),
                                      label: Text("Try Again"))
                                ],
                              )
                            ],
                          );
                        }));
                  }),
                  icon: Icon(Icons.logout_outlined))
            ],
            backgroundColor: Color.fromARGB(255, 32, 32, 32),
            bottom: TabBar(tabs: [
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
            ]),
            title: Text("Test Your Knowledge"),
          ),
          body: TabBarView(children: [
            Qus(
                righAnser: "1946",
                answer_1: "1942",
                answer_2: "1923",
                answer_3: "1946",
                answer_4: "1948",
                qus_text:
                    "1.What is the year of the indepedent day of Jordan? "),
            Qus(
                righAnser: "206",
                answer_1: "270",
                answer_2: "218",
                answer_3: "202",
                answer_4: "206",
                qus_text: "2.How many bones do the human have?"),
            Qus(
                righAnser: "betrayal",
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                qus_text: "3.What is the synonym of perfidy?"),
            Qus(
                righAnser: "was",
                answer_1: "is",
                answer_2: "were",
                answer_3: "have",
                answer_4: "was",
                qus_text: "4.He_____playing tennis two hours ago."),
            Qus(
                righAnser: "Exclamatory",
                answer_1: "Exclamatory",
                answer_2: "Complex",
                answer_3: "Compound",
                answer_4: "Simple",
                qus_text:
                    "5.You scared the life out of me! this type of sentence is:"),
            Qus(
                righAnser: "50",
                answer_1: "52",
                answer_2: "55",
                answer_3: "50",
                answer_4: "49",
                qus_text: "6.How many states are in USA?"),
          ]),
        ));
  }
}
