import 'package:flutter/material.dart';
import 'package:flutter_learn/viwe/homeviwe.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "flutter learn",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homeviwe(),
    );
  }
}
