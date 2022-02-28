// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'card.dart';

class WallpaperList extends StatefulWidget {
  @override
  State<WallpaperList> createState() => _WallpaperListState();
}

class _WallpaperListState extends State<WallpaperList> {
  List<Widget> column1 = [];
  List<Widget> column2 = [];
  final int wallpapers_quantity = 10;
  void populatelists() {
    for (int i = 1; i <= wallpapers_quantity; i++) {
      if (i.isOdd) {
        column1.add(
          Image_Card(
            image: 'wps/wp_${i.toString()}.jpg',
          ),
        );
      } else {
        column2.add(Image_Card(
          image: 'wps/wp_${i.toString()}.jpg',
        ));
      }
    }
  }

  @override
  void initState() {
    populatelists();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: column1,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: column2,
          ),
        ),
      ],
    );
  }
}
