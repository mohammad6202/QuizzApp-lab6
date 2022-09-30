import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'models/functions.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Quizz App"),
          backgroundColor: Color.fromARGB(255, 69, 68, 68),
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/knowledge.jpg"))),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Knowledge is power. Information is liberating.Education is the permise of progress, in every society, in every family.",
                style: TextStyle(
                    color: Color.fromARGB(255, 204, 204, 192),
                    fontSize: 35,
                    fontFamily: 'Caveat'),
              ),
              SizedBox(
                height: 450,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 196, 170, 7)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return Alert();
                        }));
                  },
                  child: Text("Start Quiz"))
            ],
          )),
        ));
  }
}
