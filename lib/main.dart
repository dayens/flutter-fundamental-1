import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/ui/home_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Restaurant',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}