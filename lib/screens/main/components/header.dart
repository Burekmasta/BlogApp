import 'package:flutter/material.dart';

import 'package:news/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';

class Header extends StatelessWidget {
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
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding,
                top: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.contact_support_outlined,
                      color: Colors.white,
                    ),
                    Spacer(),

                    Text(
                      'Chiara',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.pink[400],
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
                        color: Colors.lightBlue[400],
                      ),
                    ),

                    Spacer(),

                    // Socal
                    Socal(),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
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
    );
  }
}
