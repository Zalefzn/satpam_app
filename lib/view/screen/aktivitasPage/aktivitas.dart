import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';
import 'package:sigapp_app/view/screen/aktivitasPage/aktivitasList.dart';
import 'package:sigapp_app/view/widgets/homePage/card/cardPage.dart';

class AktivitasPage extends StatefulWidget {
  const AktivitasPage({Key? key}) : super(key: key);

  @override
  State<AktivitasPage> createState() => _Aktivitas();
}

class _Aktivitas extends State<AktivitasPage> {
  @override
  Widget build(BuildContext context) {
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
          GestureDetector(
            onTap: () {
              return setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockHorizontal * 8,
                  top: SizeConfig.blockVertical * 4),
              height: SizeConfig.blockVertical * 4,
              width: SizeConfig.blockHorizontal * 20,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Column(
                                children: [
                                  Container(
                                      height: SizeConfig.blockVertical * 6,
                                      width: SizeConfig.blockHorizontal * 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.grey.shade200,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Ruangan',
                                            hintMaxLines: 1000,
                                            hintStyle: TextStyle(
                                              color: Colors.grey.shade400,
                                            )),
                                      )),
                                  SizedBox(
                                      height: SizeConfig.blockVertical * 4),
                                  Container(
                                    height: SizeConfig.blockVertical * 40,
                                    width: SizeConfig.blockHorizontal * 90,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade400,
                                          ),
                                          hintText: 'Keterangan'),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                  },
                  child: const Text('Tambah',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
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
          ),
          Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical * 15),
              child: const Center(
                  child: Text('Daftar Kegiatan',
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
                  const AktivitasList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  const AktivitasList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  const AktivitasList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  const AktivitasList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  const AktivitasList(),
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
          const CardPage(),
          SizedBox(height: SizeConfig.blockVertical * 7),
          content()
        ],
      ),
    );
  }
}
