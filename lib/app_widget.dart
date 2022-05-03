import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/info_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: '/home',
      routes: {
        "/home": (context) => HomePage(),
        "/info": (context) => const InfoPage(),
      },
    );
  }
}
