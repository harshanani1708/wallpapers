// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names
// @dart=2.9

//import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpapers/glassmorphism.dart';

import 'scrollable_images.dart';

class HomePage extends StatelessWidget {
  final backgroundimage_blue = "images/background_blue.jpg";
  final backgroundimage_grey = "images/background_grey.jpg";
  final bool isblue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background_grey.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Text(''),
            ),
          ),
          Scrollablelist(),
          //NavigationBar(),
          Glassmorphism(
            blur: 10,
            opacity: 0.4,
            //isImageContainer: false,
            child: Container(
              height: 60,
              child: Center(
                child: Text(
                  'WallPapers',
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      color: Color(0xffFF9F0A),
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
