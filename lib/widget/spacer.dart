import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///A simple sizedbox widget that takes in height or width and apply responsiveness
class XSpacer extends StatelessWidget {
  final double? w;
  final double? h;
  const XSpacer({super.key, this.w, this.h});

  @override
  Widget build(BuildContext context) {
    return w == null ? SizedBox(height: h!.h,) : SizedBox(width: w!.w,);
  }
}
