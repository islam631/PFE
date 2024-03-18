import 'package:flutter/material.dart';
import 'package:sider_alhadjar/HomePage.dart';
import 'package:sider_alhadjar/MediaAct.dart';
import 'package:sider_alhadjar/Products.dart';
import 'package:sider_alhadjar/components/ScrollHideableGNav.dart';
import 'package:sider_alhadjar/settings/settings.dart';

class PageNavigation extends StatefulWidget {
  @override
  _PageNavigationState createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  final ScrollController _homeScrollController = ScrollController();
  final ScrollController _mediaActScrollController = ScrollController();
  final ScrollController _productsScrollController = ScrollController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(HomeScrollController: _homeScrollController),
          MediaAct(mediaActScrollController: _mediaActScrollController),
          Products(productsScrollController: _productsScrollController),
          settings(),
        ],
      ),
      bottomNavigationBar: ScrollHideableGNav(
        homeScrollController: _homeScrollController,
        mediaActScrollController: _mediaActScrollController,
        productsScrollController: _productsScrollController,
        onTabChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
