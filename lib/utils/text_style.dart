import 'package:flutter/material.dart';

class TextStyles{
  TextStyles._();

  static final TextStyle appNameTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: Colors.white.withOpacity(0.7),
  );

  static final TextStyle tagLineTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle bigHeadingTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
} 

