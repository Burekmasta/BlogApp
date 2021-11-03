import 'package:flutter/material.dart';

import 'package:news/screens/home/home_screen.dart';
import 'package:news/screens/main/components/header.dart';

import '../../constants.dart';

class Haupt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: HomeScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
