import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news/NewBlog/SingleBlog.dart';
import 'package:news/NewBlog/WholeTrip.dart';

import '../constants.dart';

class MenuNeuerBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(kDefaultPadding),
                ),
                color: kPrimaryColor,
              ),
              width: double.infinity,
              height: 100,
              child: Text(
                'New Blog',
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 0,
              ),
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 275,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                ('https://www.giroprivileg.de/media/image/d4/f7/0a/Bild_35_giroprivileg_sparkasse_lueneburg_600x400_600x600.jpg')),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(kDefaultPadding),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 112.5),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          'Single Blog',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 50.0,
                              fontFamily: 'bold',
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SingleBlog()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: InkWell(
                child: Stack(
                  children: [
                    Container(
                      height: 275,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                ('https://www.hogapage.de/wp-content/uploads/sites/16/2017/11/Urlaubsziele.jpg')),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(kDefaultPadding),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 112.5),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          'Whole Trip',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 50.0,
                              fontFamily: 'bold',
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WholeTrip()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
