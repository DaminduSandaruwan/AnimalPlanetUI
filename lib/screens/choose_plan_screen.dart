import 'package:animal_planet/common/custom_app_bar.dart';
import 'package:animal_planet/common/subscription_container.dart';
import 'package:animal_planet/utils/strings.dart';
import 'package:animal_planet/utils/text_style.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),

      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
                child: Text(
                  Strings.CHOOSE_A_PLAN,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                text: Strings.WEEK_SUBSCRIPTION,
                amount: "1.99",
                imagepath: "assets/images/weekly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.ONE_MONTH_SUBSCRIPTION,
                amount: "4.39",
                imagepath: "assets/images/monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.THREE_MONTH_SUBSCRIPTION,
                amount: "9.99",
                imagepath: "assets/images/3monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.SIX_MONTH_SUBSCRIPTION,
                amount: "13",
                imagepath: "assets/images/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
            bottom: 32,
            left:16,
            child: Text(
              Strings.LAST_STEP_TO_ENJOY,
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4,-0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}