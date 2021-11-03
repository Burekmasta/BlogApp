
import 'package:flutter/material.dart';


class MenuRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      
      appBar: AppBar(
        title: Text("Route"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
