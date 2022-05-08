import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/pages/explore.dart';
import 'package:onlline_room_reservation/pages/home.dart';
import 'package:onlline_room_reservation/pages/root.dart';
import 'package:onlline_room_reservation/theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
        primaryColor: primary,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RootApp(),
        HomePage.id : (context) => HomePage(),
        ExplorePage.id : (context) => ExplorePage(),

      },

    );
  }
}
