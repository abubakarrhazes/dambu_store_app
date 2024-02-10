// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dambu_store_app/features/auth/views/widgets/onboard_views.dart';
import 'package:dambu_store_app/utils/constants/app_colors.dart';
import 'package:dambu_store_app/utils/constants/app_images.dart';
import 'package:dambu_store_app/utils/constants/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Page View Here
        PageView(
          children: [
            OnboardViews(
              image: AppImage.onboardImageOne,
              headingText: AppText.onboardTextOneHeading,
              subHeadingText: AppText.onbaordTextOneSub,
            ),
            OnboardViews(
              image: AppImage.onboardImageTwo,
              headingText: AppText.onboardTextThreeHeading,
              subHeadingText: AppText.onboardTextThreeSub,
            ),
            OnboardViews(
              image: AppImage.onboardImageThree,
              headingText: AppText.onboardTextOneHeading,
              subHeadingText: AppText.onbaordTextOneSub,
            )
          ],
        ),
        //Skip Button Here

        Positioned(
            right: 10,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip ',
                  style: TextStyle(color: AppColors.primaryColor),
                ))),

        //Navigate With Smooth Indicator

        Positioned(
          bottom: 50,
          left: 10,
          child: SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: AppColors.primaryColor, dotHeight: 10),
          ),
        ),

        // Button
        Positioned(
            bottom: 50,
            right: 10,
            child: ElevatedButton(onPressed: () {}, child: Text('Next')))
      ],
    ));
  }
}
