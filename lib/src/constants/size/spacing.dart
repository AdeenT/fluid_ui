import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JSpace {
  static final double width = Get.size.width;
  static final double height = Get.size.height;
  static Widget horizontal(double space) {
    return SizedBox(width: width * (space / 1000));
  }

  static Widget vertical(double space) {
    return SizedBox(height: height * (space / 1000));
  }
}
