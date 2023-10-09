import 'package:equb/widget/progress_hud.dart';
import 'package:equb/widget/spacer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/language_controller.dart';
import '../utilities/text_style.dart';
import '../widget/button.dart';
import '../widget/text_field.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  bool isBusy = false;
  login() {
    setState(() {
      isBusy = true;
    });
  }

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
