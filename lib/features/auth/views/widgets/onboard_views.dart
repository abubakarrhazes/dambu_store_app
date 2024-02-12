// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:dambu_store_app/common/styles/app_style.dart';
import 'package:dambu_store_app/utils/constants/app_images.dart';
import 'package:dambu_store_app/utils/constants/app_text.dart';
import 'package:flutter/material.dart';

class OnboardViews extends StatelessWidget {
  const OnboardViews({
    required this.image,
    required this.headingText,
    required this.subHeadingText,
  });

  final String image;
  final String headingText;
  final String subHeadingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            height: 15,
          ),
          Text(headingText, style: AppStyle.headingTextStyle,),
          SizedBox(
            height: 15,
          ),
          Text(textAlign: TextAlign.center, subHeadingText, ),
        ],
      ),
    );
  }
}
