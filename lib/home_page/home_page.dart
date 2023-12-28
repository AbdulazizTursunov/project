import 'package:flutter/material.dart';
import 'package:project/bottom_nav_bar/nav_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: BottomNavBar(),
    );
  }
}
