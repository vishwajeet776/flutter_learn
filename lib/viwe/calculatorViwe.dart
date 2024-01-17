// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class calculatorviwe extends StatefulWidget {
  const calculatorviwe({super.key});

  @override
  State<calculatorviwe> createState() => _calculatorviweState();
}

// ignore: camel_case_types
class _calculatorviweState extends State<calculatorviwe> {
  
  int x = 0;
  int y = 0;
  num z = 0;

  final diplayOneControler = TextEditingController();
  final diplayTwoControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    diplayOneControler.text = x.toString();
    diplayTwoControler.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(children: [
        DisplayOne(hint: "Enter 1st no", controller: diplayOneControler),
        const SizedBox(
          height: 30,
        ), //for giving space between two boxes
        DisplayOne(hint: "Enter 2nd no", controller: diplayTwoControler),
        const SizedBox(
          height: 30,
        ),

        Text(
          z.toString(),
          style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),

        const Spacer(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  z = num.tryParse(diplayOneControler.text)! +
                     ( num.tryParse(diplayTwoControler.text)!);
                });
              },
              child: const Icon(CupertinoIcons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                 setState(() {
                  z = num.tryParse(diplayOneControler.text)! -
                     ( num.tryParse(diplayTwoControler.text)!);
                });
              },
              child: const Icon(CupertinoIcons.minus),
            ),
            FloatingActionButton(
              onPressed: () {
                 setState(() {
                  z = num.tryParse(diplayOneControler.text)! /
                     ( num.tryParse(diplayTwoControler.text)!);
                });
              },
              child: const Icon(CupertinoIcons.divide),
            ),
            FloatingActionButton(
              onPressed: () {
                 setState(() {
                  z = num.tryParse(diplayOneControler.text)! *
                     ( num.tryParse(diplayTwoControler.text)!);
                });
              },
              child: const Icon(CupertinoIcons.multiply),
            ),
            
          ],
        ),
        const SizedBox(height: 10,),

        FloatingActionButton.extended(onPressed:(){
         setState(() {
            x=0;
          y=0;
          z=0;
          diplayOneControler.clear();
          diplayTwoControler.clear();
         });
        }, label: const Text("clear"))

      ]),
    );
  }
}

// ignore: must_be_immutable
class DisplayOne extends StatelessWidget {
   DisplayOne(
      {super.key, this.hint = "enter a numbar", required this.controller});
  String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(),
      autofocus: true,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 0, 0, 11),
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 11, 0, 0),
          )),
    );
  }
}
