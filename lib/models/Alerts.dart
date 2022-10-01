import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Home.dart';
import 'Quiz.dart';

class Alert1 extends StatelessWidget {
  const Alert1({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Wanna Try Again?"),
      backgroundColor: const Color.fromARGB(255, 184, 183, 183),
      actions: [
        Row(
          children: [
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 63, 63)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return const Home();
                  })));
                },
                icon: const Icon(Ionicons.log_out),
                label: const Text("Exit")),
            const SizedBox(
              width: 50,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 63, 63)),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return const Quiz();
                  })));
                },
                icon: const Icon(Ionicons.reload_circle),
                label: const Text("Try Again"))
          ],
        )
      ],
    );
  }
}

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 55, 53, 53),
      title: const Text(
        "Are you Ready??",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) {
                  return const Quiz();
                })));
              },
              child: Row(
                children: const [
                  Text("Yes", style: TextStyle(color: Colors.white)),
                  Icon(
                    Ionicons.checkmark,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                  return const Home();
                })));
              },
              child: Row(
                children: const [
                  Text("No", style: TextStyle(color: Colors.white)),
                  Icon(
                    Ionicons.close,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
