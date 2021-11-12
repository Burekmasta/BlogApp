import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

class SingleBlog extends StatefulWidget {
  @override
  _SingleBlogState createState() => _SingleBlogState();
}

class _SingleBlogState extends State<SingleBlog> {
  DateTimeRange dateRange;

  String getFrom() {
    if (dateRange == null) {
      return ' From';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return ' Until';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange.end);
    }
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(Duration(hours: 24 * 3)));

    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
      builder: (context, child) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 150, bottom: 50, right: 30, left: 30),
              child: Container(
                height: 520,
                width: 700,
                child: Theme(
                  data: ThemeData.dark().copyWith(
                    colorScheme: ColorScheme.dark(
                      primary: kPrimaryColor,
                      onPrimary: Colors.white,
                      surface: kBackgroundColor,
                      onSurface: kPrimaryColor,
                    ),
                  ),
                  child: child,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: onWillPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 0),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
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
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        height: 0.5,
                        color: kBackgroundColor,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 10, right: 0, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
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
                                hintStyle: GoogleFonts.roboto(
                                  fontSize: 16,
                                  height: 0.5,
                                  color: kBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 10, right: 0, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                            ),
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  alignment: Alignment.centerLeft,
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ))),
                              icon: Icon(Icons.date_range, color: Colors.black),
                              onPressed: () => pickDateRange(context),
                              label: Text(
                                getFrom(),
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: kBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 10, right: 0, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.all(0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                            ),
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  alignment: Alignment.centerLeft,
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ))),
                              icon: Icon(Icons.date_range, color: Colors.black),
                              onPressed: () {},
                              label: Text(
                                getUntil(),
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: kBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 0),
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[900],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    height: 460,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: new ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 200.0,
                        ),
                        child: new RawScrollbar(
                          thumbColor: kPrimaryColor,
                          radius: Radius.circular(20),
                          thickness: 5,
                          child: new SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            child: SizedBox(
                              height: 1900.0,
                              child: new TextField(
                                textAlignVertical: TextAlignVertical.top,
                                maxLines: 1000,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Add your text here',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: kBackgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 250, right: 10, top: 5, bottom: 30),
                  child: ElevatedButton(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Future<bool> onWillPop() async {
    final shouldPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        backgroundColor: kBackgroundColor,
        title: Text(
          'Are you sure?',
          style: TextStyle(color: kPrimaryColor),
        ),
        content: Text('Do you want to leave without saving?',
            style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                'No',
                style: TextStyle(color: kPrimaryColor),
              )),
          TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                'Yes',
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
    return shouldPop ?? false;
  }
}
