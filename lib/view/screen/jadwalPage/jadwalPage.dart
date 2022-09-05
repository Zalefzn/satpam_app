import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({Key? key}) : super(key: key);

  @override
  State<JadwalPage> createState() => _Jadwal();
}

class _Jadwal extends State<JadwalPage> {
  @override
  Widget build(BuildContext context) {
    Widget headerData() {
      return Container();
    }

    Widget jadwalBulan() {
      return Container();
    }

    Widget jadwalMinggu() {
      return Container();
    }

    Widget button() {
      return Container();
    }

    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
