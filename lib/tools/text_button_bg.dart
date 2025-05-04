import 'package:flutter/material.dart';

extension String2Color on String {
  Color toColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

MaterialStateProperty<Color> createTextBtnBgColor() {
  return MaterialStateProperty.resolveWith((states) {
// If the button is pressed, return green, otherwise blue
    if (states.contains(MaterialState.pressed)) {
      return "#ff063c91".toColor();///扩展String函数
    } else if (states.contains(MaterialState.disabled)) {
      return "#509cf6".toColor();///扩展String函数
    }
    return "#FF208FF9".toColor(); ///扩展String函数
  });
}
