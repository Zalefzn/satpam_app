import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _Splash();
}

class _Splash extends State<SplashPage> {
  void initState() {
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/loginPage', (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor4,
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/logo3.png'))),
        ),
      ),
    );
  }
}
