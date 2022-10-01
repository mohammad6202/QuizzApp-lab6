import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'models/Alerts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 69, 68, 68),
      ),
      body: Container(
          color: const Color.fromARGB(255, 45, 43, 43),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "BRAIN TEST",
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 170, 7),
                    fontSize: 35,
                    fontFamily: 'Caveat'),
              ),
              const SizedBox(
                height: 70,
              ),
              const Image(
                  height: 350,
                  fit: BoxFit.fill,
                  image: AssetImage("images/thumb.png")),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(style: BorderStyle.solid),
                      backgroundColor: const Color.fromARGB(255, 196, 170, 7)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return const Alert();
                        }));
                  },
                  child: const Text("Start Quiz"))
            ],
          )),
    );
  }
}
