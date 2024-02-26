import 'package:flutter/cupertino.dart';

import '../../../utils/constants/app_colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key, this.width = 400, this.height = 400, this.padding = 0, this.child, this.backgroundColor, this.radius = 200,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color?  backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          color: AppColors.whiteColor.withOpacity(0.1)
      ),
      child: child ,
    );
  }
}
