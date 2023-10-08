import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double height) {
    double x = getScreenHeight() / height;
    return getScreenHeight() / x;
  }

  static getWidth(double width) {
    double x = getScreenWidth() / width;
    return getScreenWidth() / x;
  }
}
