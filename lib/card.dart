// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors
// @dart=2.9
import 'dart:math';

import 'package:flutter/material.dart';

import 'wallpaper_page.dart';

class Image_Card extends StatelessWidget {
  final String image;
  Image_Card({this.image});
  static double getRandom() {
    final double y = Random().nextInt(250) / 100;
    if (y < 1.2) {
      return getRandom();
    }
    return y;
  }

  final double y = getRandom();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WallPaperPage(
                    image: image,
                  ))),
      child: AspectRatio(
        aspectRatio: 1 / y,
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
