import 'package:flutter/material.dart';
import 'package:qr_scaner/views/screens/home_screen.dart';
import 'package:qr_scaner/views/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
