// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names
// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;
  final Color color;
  //final bool isImageContainer;
  const Glassmorphism({
    this.blur,
    this.opacity,
    this.child,
    this.color,
    //this.isImageContainer
  });

  final wallpaper_container_borders = const BorderRadius.all(Radius.zero);

  final imagecontainer_borders = const BorderRadius.all(Radius.circular(20));

  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur ?? 0,
            sigmaY: blur ?? 0,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            width: scrSize.width,
            //color: Colors.transparent,
            child: child,
          ),
        ),
      ),
    );
  }
}
