import 'package:flutter/material.dart';

class Homeviwe extends StatelessWidget {
  const Homeviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.indigo,
            child: const Center(
                child: Text(
              "hallow",
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 16, 7, 10),
                  fontWeight: FontWeight.bold),
            ))),
      );
  }
}