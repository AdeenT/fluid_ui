import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];
  void onItemTapped(int index) {
    update();
    selectedIndex = index;
  }
}
