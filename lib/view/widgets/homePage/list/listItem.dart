import 'package:flutter/material.dart';
import 'package:sigapp_app/controller/utilities/config/sizeConfig.dart';

class DetailView extends StatefulWidget {
  late String image;
  late String text;

  DetailView(this.image, this.text, {Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _Detail();
}

class _Detail extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(widget.image),
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
      Center(
        child: Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700))),
      )
    ]);
  }
}
