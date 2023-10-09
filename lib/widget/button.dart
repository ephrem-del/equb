import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utilities/colors.dart';
import '../utilities/text_style.dart';
import '../views/admin_login_screen.dart';
import '../views/login_screen.dart';

class XButton extends StatelessWidget {
  final Function() onTap;
  final Function()? onDoubleTap;
  final String label;
  const XButton({
    super.key,
    required this.onTap,
    this.onDoubleTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 10.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: XColors.primaryColor,
        ),
        child: Text(
          label,
          style: XTextStyle.titleWhite,
        ),
      ),
    );
  }
}
