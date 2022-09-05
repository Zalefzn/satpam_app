import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';
import 'package:sigapp_app/view/screen/bukuTamu/bukuList.dart';

class BukuTamu extends StatefulWidget {
  const BukuTamu({Key? key}) : super(key: key);

  @override
  State<BukuTamu> createState() => _BukuTamu();
}

class _BukuTamu extends State<BukuTamu> {
  @override
  Widget build(BuildContext context) {
    Widget cardProfile() {
      return Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                height: SizeConfig.blockVertical * 25,
                width: SizeConfig.blockHorizontal * 90,
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
            ),
            Container(
              margin: const EdgeInsets.all(45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pict.png')),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockHorizontal * 3,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: const Text('Rizal Fauzan',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            child: const Text('336474783899320',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))),
                        SizedBox(height: SizeConfig.blockVertical * 0.8),
                        Container(
                          height: SizeConfig.blockVertical * 4,
                          width: SizeConfig.blockHorizontal * 20,
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
                          child: const Center(
                              child: Text('Rabu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                  ))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockHorizontal * 7,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/logo2.png')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Stack(
        children: [
          Container(
            height: SizeConfig.blockVertical * 61,
            width: SizeConfig.blockHorizontal * 100,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: bgColor1),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical * 12),
            height: SizeConfig.blockVertical * 49,
            width: SizeConfig.blockHorizontal * 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockHorizontal * 8,
                top: SizeConfig.blockVertical * 4),
            height: SizeConfig.blockVertical * 4,
            width: SizeConfig.blockHorizontal * 20,
            child: const Center(
              child: Text('Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical * 15),
              child: const Center(
                  child: Text('Buku Tamu',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)))),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical * 22),
            height: SizeConfig.blockVertical * 39,
            width: SizeConfig.blockHorizontal * 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.blockVertical * 2),
                  BukuList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  BukuList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  BukuList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  BukuList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  BukuList(),
                  SizedBox(height: SizeConfig.blockVertical * 2),
                ],
              ),
            ),
          ),
        ],
      );
    }

    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: SizeConfig.blockVertical * 7),
          cardProfile(),
          SizedBox(height: SizeConfig.blockVertical * 7),
          content(),
        ],
      ),
    );
  }
}
