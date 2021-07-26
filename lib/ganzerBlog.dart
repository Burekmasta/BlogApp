import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:news/models/blog_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/GanzerBlog.dart';
import 'package:news/responsive.dart';

import 'models/preview_model.dart';

class GanzerBlog extends StatefulWidget {
  final BlogModel blog;

  const GanzerBlog(
    this.blog,
  );

  @override
  _GanzerBlogState createState() => _GanzerBlogState();
}

class _GanzerBlogState extends State<GanzerBlog> {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: blogEintrag(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget blogEintrag(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.blog.ort,
              style: TextStyle(
                color: kDarkBlackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Text(
              widget.blog.date,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            widget.blog.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 32 : 24,
              fontFamily: "Raleway",
              color: kDarkBlackColor,
              height: 1.3,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          widget.blog.description1,
          style: TextStyle(
            height: 1.5,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Image.asset(widget.blog.bild1),
        Text(widget.blog.description2,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild2),
        Image.asset(widget.blog.bild4),
        Image.asset(widget.blog.bild3),
        Text(widget.blog.description3,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild5),
        Text(widget.blog.description4,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild6),
        Image.asset(widget.blog.bild7),
        Image.asset(widget.blog.bild8),
        Text(widget.blog.description5,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild9),
        Text(widget.blog.description6,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild10),
        Text(widget.blog.description7,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        Image.asset(widget.blog.bild11),
        Text(widget.blog.description8,
            style: TextStyle(height: 1.5, fontSize: 18, color: Colors.black)),
        widget.blog.bild12.isNotEmpty
            ? Image.asset(widget.blog.bild12)
            : Container(),
        Text(
          widget.blog.description9,
          style: TextStyle(
            height: 1.5,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        widget.blog.bild13.isNotEmpty
            ? Image.asset(widget.blog.bild13)
            : Container(),
        Text(
          widget.blog.description14,
          style: TextStyle(
            height: 1.5,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        widget.blog.bild14.isNotEmpty
            ? Image.asset(widget.blog.bild14)
            : Container(),
        Text(
          widget.blog.description10,
          style: TextStyle(
            height: 1.5,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
