import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class SingleBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 200, bottom: 10, top: 45),
                width: MediaQuery.of(context).size.width,
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.create_rounded,
                      color: kDarkBlackColor,
                    ),
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      height: 0.5,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 200, bottom: 0, top: 0),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintMaxLines: 1,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none),
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: kDarkBlackColor,
                ),
                hintText: 'Place',
                hintStyle: TextStyle(
                  height: 0.5,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 200, bottom: 0, top: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintMaxLines: 1,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none),
                prefixIcon: Icon(
                  Icons.date_range,
                  color: kDarkBlackColor,
                ),
                hintText: 'Date',
                hintStyle: TextStyle(
                  height: 0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              height: 200,
              color: Colors.transparent,
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                ),
                padding: EdgeInsets.all(10),
                child: new ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 200.0,
                  ),
                  child: new Scrollbar(
                    child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: true,
                      child: SizedBox(
                        height: 190.0,
                        child: new TextField(
                          maxLines: 100,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add your text here',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
