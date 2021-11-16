import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/constants.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPage createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: RawScrollbar(
            thumbColor: kPrimaryColor,
            radius: Radius.circular(20),
            thickness: 5,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: false,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: kPrimaryColor),
                      ),
                    ),
                    height: 60,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Chat',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(kDefaultPadding),
                      ),
                      color: Colors.transparent,
                    ),
                    width: double.infinity,
                    height: 55,
                    child: TextField(
                      style: TextStyle(
                        color: kBackgroundColor,
                      ),
                      decoration: InputDecoration(
                        hintMaxLines: 1,
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          Icons.search,
                          color: kBackgroundColor,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: kBackgroundColor,
                          height: 0.4,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
