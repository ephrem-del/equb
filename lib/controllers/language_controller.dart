import 'package:get/get.dart';

class LanguageController extends GetxController {
  String language = 'A'; //amharic
  changeLanguage() {
    if (language == 'A') language = 'E'; //english
    if (language == 'E') language = 'A'; //amharic
    update();
  }
}
