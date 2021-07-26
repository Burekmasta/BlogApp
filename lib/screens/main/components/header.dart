import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: kDarkBlackColor,
      ),
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),

                      Text(
                        'Chiara',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.pink[200],
                        ),
                      ),

                      Text(
                        ' &',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),

                      Text(
                        ' Linda',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[200],
                        ),
                      ),

                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Text(
                    "Willkommen zu unserem Blog",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      "Hier ist ein kleiner Ausschnitt von unserer Zeit nach unserem Abitur. Viel Spaß!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
