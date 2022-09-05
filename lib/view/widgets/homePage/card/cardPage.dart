import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';
import 'package:sigapp_app/controller/utilities/theme/color.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _Card();
}

class _Card extends State<CardPage> {
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
          GestureDetector(
            onTap: () async {
              await getImage();
            },
            child: Container(
              margin: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageData != null
                      ? Container(
                          height: 70,
                          width: 70,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(imageData!, fit: BoxFit.cover)))
                      : Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/pict.png'))),
                        ),
                  SizedBox(
                    width: SizeConfig.blockHorizontal * 3,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text('$nama',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            child: Text('$nra',
                                style: const TextStyle(
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
                          child: Center(
                              child: Text('$hari',
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
          ),
        ],
      ),
    );
  }
}
