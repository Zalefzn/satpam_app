import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/view/screen/absenPage/absensi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sigapp_app/view/screen/aktivitasPage/aktivitas.dart';
import 'package:sigapp_app/view/screen/beritaPage/beritaPage.dart';
import 'package:sigapp_app/view/screen/bukuTamu/bukuTamu.dart';
import 'package:sigapp_app/view/screen/jadwalPage/jadwalPage.dart';
import 'package:sigapp_app/view/screen/kontakPage/kontakPage.dart';
import 'package:sigapp_app/view/screen/patroliPage/patroli.dart';
import 'package:sigapp_app/view/widgets/homePage/card/cardPage.dart';
import 'package:sigapp_app/view/widgets/homePage/list/listBerita.dart';
import 'package:sigapp_app/view/widgets/homePage/list/listItem.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Home();
}

class _Home extends State<HomePage> {
  String nama = '';
  String nra = '';

  var hari = DateFormat.EEEE().format(DateTime.now());

  File? imageData;

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    final PickedFile? imagePicked =
        await _picker.getImage(source: ImageSource.gallery);
    imageData = File(imagePicked!.path);
    setState(() {});
  }

  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      nama = preferences.getString("nama") ?? "-";
      nra = preferences.getString('nra') ?? '-';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget cardProfile() {
    //   return Center(
    //     child: Stack(
    //       children: [
    //         Center(
    //           child: Container(
    //             height: SizeConfig.blockVertical * 25,
    //             width: SizeConfig.blockHorizontal * 90,
    //             decoration: BoxDecoration(
    //                 boxShadow: [
    //                   BoxShadow(
    //                     color: Colors.black.withOpacity(0.2),
    //                     spreadRadius: 3,
    //                     blurRadius: 4,
    //                     offset: Offset(0, 3),
    //                   ),
    //                 ],
    //                 gradient: LinearGradient(
    //                   colors: [
    //                     bgColor4,
    //                     bgColor1,
    //                   ],
    //                 ),
    //                 borderRadius: BorderRadius.circular(30),
    //                 color: bgColor4),
    //           ),
    //         ),
    //         GestureDetector(
    //           onTap: () async {
    //             await getImage();
    //           },
    //           child: Container(
    //             margin: EdgeInsets.all(40),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 imageData != null
    //                     ? Container(
    //                         height: 70,
    //                         width: 70,
    //                         child: ClipRRect(
    //                             borderRadius: BorderRadius.circular(100),
    //                             child:
    //                                 Image.file(imageData!, fit: BoxFit.cover)))
    //                     : Container(
    //                         height: 70,
    //                         width: 70,
    //                         decoration: const BoxDecoration(
    //                             image: DecorationImage(
    //                                 fit: BoxFit.cover,
    //                                 image: AssetImage('assets/pict.png'))),
    //                       ),
    //                 SizedBox(
    //                   width: SizeConfig.blockHorizontal * 3,
    //                 ),
    //                 Container(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Container(
    //                           child: Text('$nama',
    //                               style: const TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 17,
    //                                   fontWeight: FontWeight.bold))),
    //                       Container(
    //                           child: Text('$nra',
    //                               style: const TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 14,
    //                                   fontWeight: FontWeight.w400))),
    //                       SizedBox(height: SizeConfig.blockVertical * 0.8),
    //                       Container(
    //                         height: SizeConfig.blockVertical * 4,
    //                         width: SizeConfig.blockHorizontal * 20,
    //                         decoration: BoxDecoration(
    //                             boxShadow: [
    //                               BoxShadow(
    //                                 color: Colors.black.withOpacity(0.2),
    //                                 spreadRadius: 3,
    //                                 blurRadius: 4,
    //                                 offset: Offset(0, 3),
    //                               ),
    //                             ],
    //                             gradient: LinearGradient(
    //                               colors: [
    //                                 bgColor4,
    //                                 bgColor1,
    //                               ],
    //                             ),
    //                             borderRadius: BorderRadius.circular(30),
    //                             color: bgColor4),
    //                         child: Center(
    //                             child: Text('$hari',
    //                                 style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 12,
    //                                   fontWeight: FontWeight.w800,
    //                                 ))),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: SizeConfig.blockHorizontal * 7,
    //                 ),
    //                 Container(
    //                   height: 40,
    //                   width: 40,
    //                   decoration: const BoxDecoration(
    //                     image: DecorationImage(
    //                         fit: BoxFit.cover,
    //                         image: AssetImage('assets/logo2.png')),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget textRow1() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 75),
                child: const Text('Todo :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ))),
          ],
        ),
      );
    }

    Widget textRow2() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 45),
                child: const Text('Berita :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ))),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeritaPage()));
                });
              },
              child: Container(
                  child: const Text('View All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ))),
            ),
          ],
        ),
      );
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: SizeConfig.blockVertical * 4),
            CardPage(),
            SizedBox(height: SizeConfig.blockVertical * 4),
            textRow1(),
            SizedBox(height: SizeConfig.blockVertical * 3),
            Container(
              height: SizeConfig.blockVertical * 10,
              width: SizeConfig.blockHorizontal * 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AbsensiPage()));
                          });
                        },
                        child: DetailView('assets/absen.png', 'Absensi')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AktivitasPage()));
                          });
                        },
                        child: DetailView('assets/aktivitas.png', 'Aktivitas')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PatroliPage()));
                          });
                        },
                        child: DetailView('assets/patroli.png', 'Patroli')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const JadwalPage()));
                          });
                        },
                        child: DetailView('assets/jadwal.png', 'Jadwal')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BukuTamu()));
                          });
                        },
                        child: DetailView('assets/bukuTamu.png', 'Buku Tamu')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BeritaPage()));
                          });
                        },
                        child: DetailView('assets/berita.png', 'Berita')),
                    SizedBox(width: SizeConfig.blockHorizontal * 7),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const KontakPage()));
                          });
                        },
                        child: DetailView('assets/darurat.png', 'Darurat')),
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockVertical * 3),
            textRow2(),
            SizedBox(height: SizeConfig.blockVertical * 3),
            Container(
              height: SizeConfig.blockVertical * 38.1,
              width: SizeConfig.blockHorizontal * 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                    ListBerita(),
                    SizedBox(height: SizeConfig.blockVertical * 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
