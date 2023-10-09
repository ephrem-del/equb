import 'package:equb/controllers/language_controller.dart';
import 'package:equb/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool isBusy;
  final bool languageSelectorVisible;
  ProgressHUD({
    super.key,
    required this.child,
    required this.isBusy,
    required this.languageSelectorVisible
  });
  final languageController = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            child,
            languageSelectorVisible ? Positioned(
              top: 20,
              right: 20,
              child: DropdownMenu(
                width: 100,
                initialSelection: languageController.language.value,
                onSelected: (value) {
                  if (value != languageController.language.value) {
                    languageController.changeLanguage();
                  }
                },
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: 'A', label: 'አማ'),
                  DropdownMenuEntry(value: 'E', label: 'En')
                ],
              ),
            ) : SizedBox.shrink(),
            Visibility(
              visible: isBusy,
              child: _loadingHUD(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _loadingHUD(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
      ),
      child: const Center(
        child: SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
