import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'generated/locales.g.dart';
import 'firebase_options.dart';
import 'app/routes/app_pages.dart';
import 'core/theme/app_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, 
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  if (!GetPlatform.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseConfig.platformOptions,
    );
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nady System",
      translationsKeys: AppTranslation.translations,
      themeMode: ThemeMode.light,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      defaultTransition: Transition.fade,
      scrollBehavior: MyCustomScrollBehavior(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      unknownRoute: AppPages.notFoundPage,
      // initialBinding: AppBinding(),
      // home: const SplashPage(),
    ),
  );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
