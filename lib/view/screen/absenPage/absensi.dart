import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';
import 'package:sigapp_app/view/widgets/homePage/card/cardPage.dart';
import 'absensiList.dart';

class AbsensiPage extends StatefulWidget {
  const AbsensiPage({Key? key}) : super(key: key);

  @override
  State<AbsensiPage> createState() => _Absensi();
}

class _Absensi extends State<AbsensiPage> {
  String nama = '';
  String nra = '';

  var hari = DateFormat.EEEE().format(DateTime.now());
  var tanggal = DateFormat("yyyy-MM-dd").format(DateTime.now());
  File? imageData;

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    final PickedFile? imagePicked =
        await _picker.getImage(source: ImageSource.camera);
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal * 7,
                    top: SizeConfig.blockVertical * 4),
                height: SizeConfig.blockVertical * 4,
                width: SizeConfig.blockHorizontal * 20,
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
                child: Center(
                  child: GestureDetector(
                    onTap: () async {
                      getImage();
                    },
                    child: const Text('In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal * 4,
                    top: SizeConfig.blockVertical * 4),
                height: SizeConfig.blockVertical * 4,
                width: SizeConfig.blockHorizontal * 20,
                child: Center(
                  child: GestureDetector(
                    onTap: () async {
                      getImage();
                    },
                    child: const Text('Out',
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
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical * 15),
              child: const Center(
                  child: Text('Attendance',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)))),
          Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical * 22),
              height: SizeConfig.blockVertical * 39,
              width: SizeConfig.blockHorizontal * 100,
              child: ListView(
                children: [
                  AbsensiList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  AbsensiList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  AbsensiList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  AbsensiList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                  AbsensiList(),
                  SizedBox(height: SizeConfig.blockVertical * 4),
                ],
              )),
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
          content(),
        ],
      ),
    );
  }
}
