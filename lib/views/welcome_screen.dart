import 'dart:ui';

import 'package:equb/utilities/colors.dart';
import 'package:equb/utilities/path.dart';
import 'package:equb/utilities/text_style.dart';
import 'package:equb/views/login_screen.dart';
import 'package:equb/widget/button.dart';
import 'package:equb/widget/divider.dart';
import 'package:equb/widget/progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/language_controller.dart';
import 'admin_login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isBusy = true;

  initialize() {
    Future.delayed(const Duration(
      seconds: 2,
    )).then((value) {
      setState(() {
        isBusy = false;
      });
    });
  }

  @override
  void initState() {
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      languageSelectorVisible: false,
      isBusy: isBusy,
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.backgroundImage,
              ),
              fit: BoxFit.fitHeight),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            height: 250.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(226, 255, 255, 255),
              borderRadius: BorderRadius.circular(
                20.r,
              ),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: GetBuilder<LanguageController>(
                  builder: (controller) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.language.value == 'A'
                              ? 'ዕቁብ'
                              : 'Equb',
                          style: XTextStyle.h1Black,
                        ),
                        Divider(
                          thickness: 2,
                          color: XColors.primaryColor,
                          indent: 20,
                          endIndent: 20,
                        ),
                        heightBox(10),
                        Text(controller.language.value == 'A'
                            ? 'ዘመናዊ የሆነ የዕቁብ አያያዝ '
                            : 'A modern way to use equb'),
                        heightBox(30),
                        XButton(onTap: () {
        Get.to(() => LoginScreen());
      },onDoubleTap: () {
        Get.to(() => AdminLoginScreen());
      },label: controller.language.value == 'A' ? 'ልግባ' : 'Login',),
                      ],
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
