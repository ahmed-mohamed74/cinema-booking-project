import 'package:b_swam/home.dart';
import 'package:b_swam/models.dart';
import 'package:b_swam/screens/details/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
      // Screen(
      //   movie: Movies[4],
      // ),
    );
  }
}
