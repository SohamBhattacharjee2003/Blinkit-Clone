import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomImage({required String img}) {
    // Added Widget return type
    return Image.asset("assets/images/$img");
  }

  static Widget CustomText({
    // Added Widget return type
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
