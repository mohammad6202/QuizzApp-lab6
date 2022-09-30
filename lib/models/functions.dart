import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Home.dart';
import 'Quiz.dart';

class Alert extends StatelessWidget {
  Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 55, 53, 53),
      title: Text(
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
                  return Quiz();
                })));
              },
              child: Row(
                children: [
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
                  return Home();
                })));
              },
              child: Row(
                children: [
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
    ;
  }
}
