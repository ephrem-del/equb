import 'package:equb/controllers/language_controller.dart';
import 'package:equb/utilities/colors.dart';
import 'package:equb/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  
  @override
  initState() {
    Get.put(LanguageController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360.0, 800.0),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Equb",
          theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
            primaryColor: XColors.primaryColor,
          ),
          home: WelcomeScreen(),
        );
      },
    );
  }
}
