import 'package:flutter/material.dart';
import 'package:stack/Constants/screen_size.dart';

class AppConst {
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 25);
  static EdgeInsets boxPadding(context) => EdgeInsets.symmetric(
      horizontal: height(context) / 55, vertical: height(context) / 55);
  static EdgeInsets smallBoxPadding(context) => EdgeInsets.symmetric(
      horizontal: height(context) / 55, vertical: height(context) / 60);
}
