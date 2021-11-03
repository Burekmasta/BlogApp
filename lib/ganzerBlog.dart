import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../constants.dart';
import 'package:news/screens/home/components/video.dart';
import 'package:news/models/blog_model.dart';
import 'package:news/responsive.dart';
import 'dart:ui';

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
            Container(
              padding: EdgeInsets.only(
                  top: 30,
                  bottom: kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
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
        widget.blog.description1.isNotEmpty
            ? Text(
                widget.blog.description1,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild1.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild1),
              )
            : Column(),
        widget.blog.video1.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video1)))
            : Column(),
        widget.blog.description2.isNotEmpty
            ? Text(
                widget.blog.description2,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild2.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild2),
              )
            : Column(),
        widget.blog.video2.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video2)),
              )
            : Column(),
        widget.blog.description3.isNotEmpty
            ? Text(
                widget.blog.description3,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild3.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild3),
              )
            : Column(),
        widget.blog.video3.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video3)))
            : Column(),
        widget.blog.description4.isNotEmpty
            ? Text(
                widget.blog.description4,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild4.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild4),
              )
            : Column(),
        widget.blog.video4.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video4)))
            : Column(),
        widget.blog.description5.isNotEmpty
            ? Text(
                widget.blog.description5,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild5.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild5),
              )
            : Column(),
        widget.blog.video5.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video5)))
            : Column(),
        widget.blog.description6.isNotEmpty
            ? Text(
                widget.blog.description6,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild6.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild6),
              )
            : Column(),
        widget.blog.video6.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video6)))
            : Column(),
        widget.blog.description7.isNotEmpty
            ? Text(
                widget.blog.description7,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild7.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild7),
              )
            : Column(),
        widget.blog.video7.isNotEmpty
            ? Container(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video7)))
            : Column(),
        widget.blog.description8.isNotEmpty
            ? Text(
                widget.blog.description8,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild8.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild8),
              )
            : Column(),
        widget.blog.video8.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video8)))
            : Column(),
        widget.blog.description9.isNotEmpty
            ? Text(
                widget.blog.description9,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild9.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild9),
              )
            : Column(),
        widget.blog.video9.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video19)))
            : Column(),
        widget.blog.description10.isNotEmpty
            ? Text(
                widget.blog.description10,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild10.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild10),
              )
            : Column(),
        widget.blog.video10.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video10)))
            : Column(),
        widget.blog.description11.isNotEmpty
            ? Text(
                widget.blog.description11,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild11.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild11),
              )
            : Column(),
        widget.blog.video11.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video11)))
            : Column(),
        widget.blog.description12.isNotEmpty
            ? Text(
                widget.blog.description12,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild12.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild12),
              )
            : Column(),
        widget.blog.video12.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video12)))
            : Column(),
        widget.blog.description13.isNotEmpty
            ? Text(
                widget.blog.description13,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild13.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild13),
              )
            : Column(),
        widget.blog.video13.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video13)))
            : Column(),
        widget.blog.description14.isNotEmpty
            ? Text(
                widget.blog.description14,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild14.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild14),
              )
            : Column(),
        widget.blog.video14.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video14)))
            : Column(),
        widget.blog.description15.isNotEmpty
            ? Text(
                widget.blog.description15,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild15.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild15),
              )
            : Column(),
        widget.blog.video15.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video15)))
            : Column(),
        widget.blog.description16.isNotEmpty
            ? Text(
                widget.blog.description16,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild16.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild16),
              )
            : Column(),
        widget.blog.video16.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video16)))
            : Column(),
        widget.blog.description17.isNotEmpty
            ? Text(
                widget.blog.description17,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild17.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild17),
              )
            : Column(),
        widget.blog.video17.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video17)))
            : Column(),
        widget.blog.description18.isNotEmpty
            ? Text(
                widget.blog.description18,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild18.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild18),
              )
            : Column(),
        widget.blog.video18.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video18)))
            : Column(),
        widget.blog.description19.isNotEmpty
            ? Text(
                widget.blog.description19,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild19.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild19),
              )
            : Column(),
        widget.blog.video19.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video19)))
            : Column(),
        widget.blog.description20.isNotEmpty
            ? Text(
                widget.blog.description20,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            : Column(),
        widget.blog.bild20.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(widget.blog.bild20),
              )
            : Column(),
        widget.blog.video20.isNotEmpty
            ? ClipRRect(
                child: ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.network(widget.blog.video20)))
            : Column(),
      ],
    );
  }
}
