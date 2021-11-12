import 'package:flutter/material.dart';
import 'package:news/constants.dart';

//! Hide Searchbar when scrolling, show again when scrolling up
class MenuSuche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
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
              SizedBox(
                height: 5,
              ),
              Wrap(
                  spacing: 1,
                  runSpacing: 1,
                  children: List.generate(searchImages.length, (index) {
                    return Container(
                      width: (size.width - 3) / 3,
                      height: (size.width - 3) / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage((searchImages[index])),
                              fit: BoxFit.cover)),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
