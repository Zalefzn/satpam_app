import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class PatroliList extends StatefulWidget {
  const PatroliList({Key? key}) : super(key: key);

  @override
  State<PatroliList> createState() => _ListPatroli();
}

class _ListPatroli extends State<PatroliList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.blockVertical * 12,
        width: SizeConfig.blockHorizontal * 90,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 4),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/pict.png'),
                ),
                borderRadius: BorderRadius.circular(50),
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
                    child: const Text('Ruangan 1',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text('Laporan Patroli ',
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
