import 'package:equb/controllers/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utilities/colors.dart';

class XTextField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  const XTextField({
    super.key,
    required this.hintText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: SizedBox(
        width: Get.width * 0.8,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(iconData),
            prefixIconColor: XColors.primaryColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                borderSide: BorderSide(color: XColors.primaryColor, width: 2)),
          ),
        ),
      ),
    );
  }
}
