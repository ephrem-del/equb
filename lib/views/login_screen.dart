import 'package:equb/controllers/language_controller.dart';
import 'package:equb/utilities/colors.dart';
import 'package:equb/utilities/text_style.dart';
import 'package:equb/widget/button.dart';
import 'package:equb/widget/progress_hud.dart';
import 'package:equb/widget/spacer.dart';
import 'package:equb/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isBusy = false;
  login() {
    setState(() {
      isBusy = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      languageSelectorVisible: true,
      isBusy: isBusy,
      child: GetBuilder<LanguageController>(
        builder: (controller) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.language.value == 'A' ? 'መግቢያ' : 'Login',
                  style: XTextStyle.h2Green,
                ),
                const XSpacer(h: 20,),
                XTextField(
                  hintText: controller.language.value == 'A'
                      ? 'ስልክ ቁጥር'
                      : 'Phone number',
                  iconData: Icons.phone,
                ),
                XTextField(hintText: controller.language.value == 'A' ? 'የሚስጥር ቁጥር':'Password', iconData: Icons.lock,),
                XSpacer(h: 10,),
                XButton(onTap: login, label: controller.language.value == 'A' ? 'ልግባ' : 'Login')
              ],
            ),
          );
        },
      ),
    );
  }
}
