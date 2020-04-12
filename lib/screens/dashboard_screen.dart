

import 'package:animal_planet/common/custom_app_bar.dart';
import 'package:animal_planet/utils/strings.dart';
import 'package:animal_planet/utils/text_style.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/elephant.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      CustomAppBar(
                        opacity : 1,
                      ),
                      Expanded(   
                        child: Align(
                          alignment: Alignment(0,-0.7),
                          child: Text(
                            Strings.WELCOME_TO_APPLET,
                            style: TextStyles.bigHeadingTextStyle,
                            textAlign: TextAlign.center,                       
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top:Radius.circular(40),),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical:16),
                    child: Text(
                      Strings.RELATED_TO_YOU,
                      style: TextStyles.buttonTextStyle,

                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left:16),
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/images/tiger.jpg",
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width*0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.LIFE_WITH_TIGER, 
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.text1, 
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/images/wild_animals.jpeg",
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width*0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.WILD_ANIMALS, 
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.text1, 
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical:16),
                    child: Text(
                      Strings.QUICK_CATEGORIES,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8), 
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/bear.png",
                                height:40, 
                                width:40
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              Strings.BEER,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8), 
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/lion.png",
                                height:40, 
                                width:40
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              Strings.LION,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8), 
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/reptiles.png",
                                height:40, 
                                width:40
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              Strings.REPTILES,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8), 
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/pets.png",
                                height:40, 
                                width:40
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              Strings.PETS,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}