import 'package:flutter/material.dart';
import 'package:flutter_bees2biz/src/constants/colors.dart';
import 'package:flutter_bees2biz/src/constants/images.dart';

class LogoBook extends StatelessWidget {
  final double height, width;
  const LogoBook(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Stack(alignment: Alignment.center, children: [
        Container(width: width, height: 2, color: colorBlanco),
        CircleAvatar(
            radius: 40,
            backgroundColor: colorBlanco,
            child: Image.asset(icon1, height: 60))
      ]),
    );
  }
}
