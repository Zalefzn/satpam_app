import 'package:flutter/material.dart';
import 'package:sigapp_app/view/screen/absenPage/absensi.dart';
import 'package:sigapp_app/view/widgets/homePage/homePage.dart';
import 'package:sigapp_app/view/widgets/loginPage/loginPage.dart';
import 'package:sigapp_app/view/widgets/registerPage/registerPage.dart';
import 'package:sigapp_app/view/widgets/splashPage/splashPage.dart';

void main() {
  runApp(const SigapApp());
}

class SigapApp extends StatelessWidget {
  const SigapApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/loginPage': (context) => const LoginPage(),
      '/registerPage': (context) => const RegisterPage(),
      '/homePage': (context) => const HomePage(),
      '/absenPage': (context) => const AbsensiPage(),
    });
  }
}
