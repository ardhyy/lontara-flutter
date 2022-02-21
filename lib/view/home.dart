import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:lontara/view/lontara_page.dart';
import 'package:lontara/view/profile_page.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  // final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentPage,
          children: const [
            LontaraPage(),
            MyProfile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (int index) => setState(() => _currentPage = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.translate), label: 'Lontara'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Profile'),
        ],
      ),
    );
  }
}
