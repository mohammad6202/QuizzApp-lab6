import 'package:flutter/material.dart';

class Qus extends StatefulWidget {
  const Qus(
      {required this.question,
      required this.answer_1,
      required this.answer_2,
      required this.answer_3,
      required this.answer_4,
      required this.righAnser,
      super.key});

  final String? question;
  final String? answer_1;

  final String? answer_2;

  final String? answer_3;

  final String? answer_4;
  final String? righAnser;
  final String check = "";

  @override
  State<Qus> createState() => _QusState();
}

class _QusState extends State<Qus> {
  Color textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 56, 54, 54),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            height: 140,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/q.png"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 84, 83, 83),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  height: 150,
                  child: Text(
                    widget.question.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: textColor,
                        fontFamily: 'Lobster'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (widget.answer_1.toString() ==
                            widget.righAnser.toString()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/R.gif")),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/X.gif")),
                                );
                              });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.center,
                        height: 140,
                        width: 140,
                        child: Text(
                            textAlign: TextAlign.center,
                            widget.answer_1.toString(),
                            style: TextStyle(fontSize: 22, color: textColor)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (widget.answer_2.toString() ==
                            widget.righAnser.toString()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/R.gif")),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/X.gif")),
                                );
                              });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.center,
                        height: 140,
                        width: 140,
                        child: Text(
                            textAlign: TextAlign.center,
                            widget.answer_2.toString(),
                            style: TextStyle(fontSize: 22, color: textColor)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (widget.answer_3.toString() ==
                            widget.righAnser.toString()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/R.gif")),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/X.gif")),
                                );
                              });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.center,
                        height: 140,
                        width: 140,
                        child: Text(
                            textAlign: TextAlign.center,
                            widget.answer_3.toString(),
                            style: TextStyle(fontSize: 22, color: textColor)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (widget.answer_4.toString() ==
                            widget.righAnser.toString()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/R.gif")),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title:
                                      Image(image: AssetImage("images/X.gif")),
                                );
                              });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.center,
                        height: 140,
                        width: 140,
                        child: Text(
                            textAlign: TextAlign.center,
                            widget.answer_4.toString(),
                            style: TextStyle(fontSize: 22, color: textColor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
