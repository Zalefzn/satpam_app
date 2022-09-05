import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class RowBerita extends StatefulWidget {
  const RowBerita({Key? key}) : super(key: key);

  @override
  State<RowBerita> createState() => _Row();
}

class _Row extends State<RowBerita> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(children: [
      Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.7,
              image: AssetImage('assets/demo.JPG'),
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.black),
      ),
      Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockVertical * 10,
            left: SizeConfig.blockHorizontal * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Koruptor',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            Text('June 2019',
                style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 10,
                    fontWeight: FontWeight.w600))
          ],
        ),
      )
    ]);
  }
}
