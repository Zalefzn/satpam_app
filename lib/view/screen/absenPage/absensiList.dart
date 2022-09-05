import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class AbsensiList extends StatefulWidget {
  const AbsensiList({Key? key}) : super(key: key);

  @override
  State<AbsensiList> createState() => _ListAbsen();
}

class _ListAbsen extends State<AbsensiList> {
  var tanggal = DateFormat("yyyy-MM-dd").format(DateTime.now());
  var hari = DateFormat.EEEE().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.blockVertical * 12,
        width: SizeConfig.blockHorizontal * 90,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 4),
              height: 60,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: SizeConfig.blockHorizontal * 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Text('$hari',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text('masuk: $tanggal',
                        style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 12,
                            fontWeight: FontWeight.w400))),
                Container(
                    child: Text('Keluar : 00:00:00:00',
                        style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 12,
                            fontWeight: FontWeight.w400))),
              ],
            )
          ],
        ));
  }
}
