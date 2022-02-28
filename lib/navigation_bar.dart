// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, missing_required_param, avoid_print

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpapers/home_page.dart';
import 'package:wallpapers/trendingpage.dart';
//import 'package:wallpapers/glassmorphism.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>
    with SingleTickerProviderStateMixin {
  TabController tabcontroller;
  @override
  void initState() {
    tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: tabcontroller,
            children: [HomePage(), Trending()],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    //height: 58,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Center(
                                child: TabBar(
                                  controller: tabcontroller,
                                  unselectedLabelColor: Color(0xff2C8039),
                                  labelColor: Color(0xff32D74B),
                                  labelStyle: TextStyle(
                                      fontFamily: 'SFPro',
                                      color: Color(0xffFF9F0A),
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal),
                                  indicator: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  tabs: [
                                    Tab(text: 'home'),
                                    Tab(text: 'trending'),
                                  ],
                                ),
                              ),
                            ),
                            //Positioned.fill(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
