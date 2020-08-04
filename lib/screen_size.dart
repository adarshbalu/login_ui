import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenInfo {
  double height, width, aspectRatio;
  ScreenInfo.fromContext(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    this.height = size.height;
    this.width = size.width;
    this.aspectRatio = size.aspectRatio;
  }
}
