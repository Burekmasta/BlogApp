import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/controllers/NavigationDrawer.dart';

import 'package:news/screens/home/home_screen.dart';

import '../../constants.dart';

class Haupt extends StatefulWidget {
  @override
  _Haupt createState() => _Haupt();
}

//! When SafeArea() is active there is space on the top, when it's disabled space is missing on the bottom
class _Haupt extends State<Haupt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
          width: MediaQuery.of(context).size.width, child: ChatPage()),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      backgroundColor: kBackgroundColor,
      extendBody: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            bottom: PreferredSize(
                child: Container(
                  color: kPrimaryColor,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(4.0)),
            floating: true,
            backwardsCompatibility: false,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.transparent),
            backgroundColor: kBackgroundColor,
            title: Text('BlogApp',
                style: GoogleFonts.yellowtail(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.near_me_outlined,
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
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
