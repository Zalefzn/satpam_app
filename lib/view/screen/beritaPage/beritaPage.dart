import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/view/screen/beritaPage/rowBerita.dart';

import 'columnBerita.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({Key? key}) : super(key: key);

  @override
  State<BeritaPage> createState() => _Berita();
}

class _Berita extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {
    Widget contentHead() {
      return Center(
        child: Stack(children: [
          Container(
              height: SizeConfig.blockVertical * 40,
              width: SizeConfig.blockHorizontal * 85,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    opacity: 0.6,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/demo.JPG'),
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20))),
          Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical * 35,
                  left: SizeConfig.blockHorizontal * 4),
              child: Text('Berita Terkini',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ))),
        ]),
      );
    }

    Widget text1() {
      return Container(
        margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 8),
        child: const Text(' Hot News :',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700)),
      );
    }

    Widget text2() {
      return Container(
        margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 8),
        child: const Text('Berita:',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700)),
      );
    }

    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.blockVertical * 8),
            contentHead(),
            SizedBox(height: SizeConfig.blockVertical * 4),
            text1(),
            SizedBox(height: SizeConfig.blockVertical * 4),
            Center(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: SizeConfig.blockHorizontal * 8),
                      RowBerita(),
                      SizedBox(width: SizeConfig.blockHorizontal * 4),
                      RowBerita(),
                      SizedBox(width: SizeConfig.blockHorizontal * 4),
                      RowBerita(),
                      SizedBox(width: SizeConfig.blockHorizontal * 4),
                      RowBerita(),
                      SizedBox(width: SizeConfig.blockHorizontal * 4),
                      RowBerita(),
                      SizedBox(width: SizeConfig.blockHorizontal * 8),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockVertical * 4),
            text2(),
            Center(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                      ColumnBerita(),
                      SizedBox(height: SizeConfig.blockVertical * 2),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
