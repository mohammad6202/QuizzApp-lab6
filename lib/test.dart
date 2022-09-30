import 'package:flutter/material.dart';

class Khara extends StatefulWidget {
  const Khara({super.key});

  @override
  State<Khara> createState() => _KharaState();
}

class _KharaState extends State<Khara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.green,
                height: 140,
                width: 140,
              ),
              Container(
                color: Colors.blue,
                height: 140,
                width: 140,
              )
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.red,
                height: 140,
                width: 140,
              ),
              Container(
                color: Colors.amber,
                height: 140,
                width: 140,
              )
            ],
          )
        ],
      ),
    );
  }
}
