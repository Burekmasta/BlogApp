import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/ganzerBlog.dart';
import 'package:news/models/blog_model.dart';
import 'package:news/responsive.dart';

import '../../../constants.dart';

class BlogPostCard extends StatelessWidget {
  final BlogModel blog;

  const BlogPostCard({
    Key key,
    @required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    blog.image,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      blog.ort,
                      style: TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Text(
                  blog.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 32 : 24,
                    fontFamily: "Raleway",
                    color: kDarkBlackColor,
                    height: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  blog.description1,
                  maxLines: 4,
                  style: TextStyle(height: 2),
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return GanzerBlog(this.blog);
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: kPrimaryColor, width: 3),
                          ),
                        ),
                        child: Text(
                          "Read more",
                          style: TextStyle(color: kDarkBlackColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.favorite_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_message-square.svg"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:
                          SvgPicture.asset("assets/icons/feather_share-2.svg"),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
