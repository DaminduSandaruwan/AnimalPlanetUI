import 'package:animal_planet/utils/strings.dart';
import 'package:animal_planet/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:48,left: 16,right: 16),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: Strings.APP_NAME,
                  style: TextStyles.appNameTextStyle,
                ),
                TextSpan(
                  text: "\n"
                ),
                TextSpan(
                  text: Strings.TAG_LINE,
                  style: TextStyles.tagLineTextStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.menu, 
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}