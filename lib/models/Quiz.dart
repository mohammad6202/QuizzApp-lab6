import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quizapp/models/Alerts.dart';

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
                          return const Alert1();
                        }));
                  }),
                  icon: const Icon(Icons.logout_outlined))
            ],
            backgroundColor: const Color.fromARGB(255, 32, 32, 32),
            bottom: const TabBar(tabs: [
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
              Icon(Icons.question_answer),
            ]),
            title: const Text("Test Your Knowledge"),
          ),
          body: const TabBarView(children: [
            Qus(
                righAnser: "1946",
                answer_1: "1942",
                answer_2: "1923",
                answer_3: "1946",
                answer_4: "1948",
                question:
                    "1.What is the year of the indepedent day of Jordan? "),
            Qus(
                righAnser: "206",
                answer_1: "270",
                answer_2: "218",
                answer_3: "202",
                answer_4: "206",
                question: "2.How many bones do the human have?"),
            Qus(
                righAnser: "betrayal",
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                question: "3.What is the synonym of perfidy?"),
            Qus(
                righAnser: "was",
                answer_1: "is",
                answer_2: "were",
                answer_3: "have",
                answer_4: "was",
                question: "4.He_____playing tennis two hours ago."),
            Qus(
                righAnser: "Exclamatory",
                answer_1: "Exclamatory",
                answer_2: "Complex",
                answer_3: "Compound",
                answer_4: "Simple",
                question:
                    "5.You scared the life out of me! this type of sentence is:"),
            Qus(
                righAnser: "50",
                answer_1: "52",
                answer_2: "55",
                answer_3: "50",
                answer_4: "49",
                question: "6.How many states are in USA?"),
          ]),
        ));
  }
}
