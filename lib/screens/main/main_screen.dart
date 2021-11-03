import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:news/controllers/HauptMenu.dart';
import 'package:news/controllers/MenuSuche.dart';

import 'package:news/controllers/MenuKontakt.dart';
import 'package:news/controllers/MenuRoute.dart';
import 'package:news/controllers/MenuNeuerBlog.dart';
import 'package:news/controllers/scroll_to_hide_widget.dart';

import '../../constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  ScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  final screens = [
    Haupt(),
    MenuSuche(),
    MenuNeuerBlog(),
    MenuRoute(),
    MenuKontakt(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      index == 0
          ? Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            )
          : Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
      index == 1
          ? Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            )
          : Icon(
              Icons.search_outlined,
              size: 30,
              color: Colors.white,
            ),
      index == 2
          ? Icon(
              Icons.add_box,
              size: 30,
              color: Colors.white,
            )
          : Icon(
              Icons.add_box_outlined,
              size: 30,
              color: Colors.white,
            ),
      index == 3
          ? Icon(
              Icons.favorite,
              size: 30,
              color: Colors.white,
            )
          : Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
      index == 4
          ? Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            )
          : Icon(
              Icons.person_outline,
              size: 30,
              color: Colors.white,
            ),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: screens[index],
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: CurvedNavigationBar(
          height: kBottomBarHeight,
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          backgroundColor: Colors.transparent,
          color: kDarkBlackColor,
        ),
      ),
    );
  }
}
