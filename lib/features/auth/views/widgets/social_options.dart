import 'package:dambu_store_app/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialOptions extends StatelessWidget {
  const SocialOptions({
    super.key, required this.imagePath, required this.onTap,
  });

  final String imagePath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Change this color as needed.

          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: Image.asset(imagePath,)),
      ),
    );
  }
}
