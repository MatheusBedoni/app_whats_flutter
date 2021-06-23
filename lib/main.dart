import 'package:flutter/material.dart';

import 'view/pages/homepage/s_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whattsapp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SHomePage(),
    );
  }
}


