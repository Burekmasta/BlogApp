import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/blog_model.dart';
import 'package:news/responsive.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        // Sidebar
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
            child: Expanded(
              child: Column(
                children: [
                  Search(),
                  SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
          )
      ],
    );
  }
}
