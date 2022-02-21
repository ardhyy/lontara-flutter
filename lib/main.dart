import 'package:lontara/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lontara());
}

class Lontara extends StatelessWidget {
  const Lontara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Lontara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Home(),
    );
  }
}
