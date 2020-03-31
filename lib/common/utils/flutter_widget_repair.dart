import 'package:flutter/material.dart';

class FlutterRepair {
  static Widget buildCustomPrefixIcon(IconData iconData ,Color color,) {
    return Container(
      transform: Matrix4.translationValues(-15.0, 0.0, 0.0),
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }

}
