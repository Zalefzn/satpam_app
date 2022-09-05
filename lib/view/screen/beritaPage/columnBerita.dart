import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class ColumnBerita extends StatefulWidget {
  const ColumnBerita({Key? key}) : super(key: key);

  @override
  State<ColumnBerita> createState() => _Column();
}

class _Column extends State<ColumnBerita> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.blockVertical * 12,
        width: SizeConfig.blockHorizontal * 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              height: 85,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  opacity: 0.7,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/demo.JPG'),
                ),
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
                    child: const Text('Hukuman Bagi Koruptor!!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text(
                        'banyaknya mahasiswa yang berdemo\nuntuk membasmi para koruptor yang\nserakah akan jabatan',
                        style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 10,
                            fontWeight: FontWeight.w400))),
              ],
            )
          ],
        ));
  }
}
