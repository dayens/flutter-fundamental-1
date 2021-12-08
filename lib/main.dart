import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/model/restaurant.dart';
import 'package:flutter_fundamental_1/ui/detail_screen.dart';
import 'package:flutter_fundamental_1/ui/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Restaurant',
      theme: ThemeData(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(
          restaurant: ModalRoute.of(context)?.settings.arguments as Restaurant
        ),
      }
    );
  }
}