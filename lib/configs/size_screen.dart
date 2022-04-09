import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = new MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight = 0;

  static bool showKeyboard = false;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    showKeyboard = _mediaQueryData.viewInsets.bottom==0.0;
  }
}
