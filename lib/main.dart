import 'package:candian_cart/app/auth/social_login/social_login.dart';
import 'package:candian_cart/app/localization/l10n/l10n.dart';
import 'package:candian_cart/services/app_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCd-WZ8bXfTr5pdSu6a4qj7uUo8wgHsNXU",
        appId: "1:429514549130:android:8bbce6b989519f73f3ca73",
        messagingSenderId: '429514549130',
        projectId: 'canadian-cart-a6bb6',
      ),
    );
    await Get.putAsync(() => LanguageService().init());
    runApp(const MyApp());
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
  Get.put(AuthenticationHelper());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      translations: LocalString(),
      locale: Get.find<LanguageService>().getSavedLocale(),
      supportedLocales: [
        Locale('en'),
        Locale('pa'),
        Locale('es'),
        Locale('it'),
        Locale('de'),
        Locale('fr'),
        Locale('tl'),
        Locale('zh'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      fallbackLocale: Locale('en', 'US'),
    );
  }
}
