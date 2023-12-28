import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/bottom_nav_bar/basket/basket_screen.dart';
import 'package:project/bottom_nav_bar/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

int index=0;
   List<Widget> screens = [
  HomePage(),
  BasketPage(),
  ];

   List<Widget> items=[
     Icon(Icons.home_outlined),
     Icon(Icons.shopping_basket_outlined),
   ];

final itemS =[
  Icon(Icons.home_outlined,size: 30.h,),
  Icon(Icons.shopping_basket_outlined,size: 30.h,),
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true  ,
      body: screens[index],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          onTap: (index)=> setState(()=> this.index =index),
          index: index,
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          buttonBackgroundColor: Colors.purple,
          items: itemS),
    );
  }
}

