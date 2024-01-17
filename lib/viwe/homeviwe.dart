import 'package:flutter/material.dart';
import 'package:flutter_learn/viwe/calculatorViwe.dart';

class Homeviwe extends StatelessWidget {
  const Homeviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 69, 8),
            body: SafeArea(
                  child: calculatorviwe()
            )
                
        );
  
  }
}