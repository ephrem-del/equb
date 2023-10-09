import 'package:equb/services/logging_service.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  RxString language = 'A'.obs; //amharic
  changeLanguage() {
    if (language.value == 'A') {
      language.value = 'E';
      update();
      logger.i(language);
      return;
    } //english
    if (language.value == 'E') {
      language.value = 'A';
      update();
      logger.i(language);
      return;
    } //amharic
  }
}
