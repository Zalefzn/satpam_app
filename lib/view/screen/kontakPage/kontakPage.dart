import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';

class KontakPage extends StatefulWidget {
  const KontakPage({Key? key}) : super(key: key);

  @override
  State<KontakPage> createState() => _Kontak();
}

class _Kontak extends State<KontakPage> {
  @override
  Widget build(BuildContext context) {
    Widget headers() {
      SizeConfig().init(context);
      return Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 10,
              left: SizeConfig.blockHorizontal * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  )),
              Text('Emergency Calls',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ));
    }

    Widget contentPage() {
      return Stack(children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5),
                  height: SizeConfig.blockVertical * 20,
                  width: SizeConfig.blockHorizontal * 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/hospital.png')),
                        ),
                      ),
                      const Text(
                        'Rumah Sakit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          bgColor4,
                          bgColor1,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: bgColor4),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: SizeConfig.blockHorizontal * 10),
                  height: SizeConfig.blockVertical * 20,
                  width: SizeConfig.blockHorizontal * 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/pln.png')),
                        ),
                      ),
                      const Text(
                        'PLN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          bgColor4,
                          bgColor1,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: bgColor4),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockVertical * 4),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5),
                  height: SizeConfig.blockVertical * 20,
                  width: SizeConfig.blockHorizontal * 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/police.png')),
                        ),
                      ),
                      const Text(
                        'Polisi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          bgColor4,
                          bgColor1,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: bgColor4),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: SizeConfig.blockHorizontal * 10),
                  height: SizeConfig.blockVertical * 20,
                  width: SizeConfig.blockHorizontal * 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/pemadam.png')),
                        ),
                      ),
                      const Text(
                        'Pemadam',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          bgColor4,
                          bgColor1,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: bgColor4),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockVertical * 8),
            Center(
              child: Container(
                child: Text('Created by Microteam',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ],
        ),
      ]);
    }

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.blockVertical * 7),
        headers(),
        SizedBox(height: SizeConfig.blockVertical * 10),
        contentPage(),
      ],
    ));
  }
}
