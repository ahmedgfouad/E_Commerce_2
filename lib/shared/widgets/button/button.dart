import 'package:flutter/cupertino.dart';

import '../../colors/colors.dart';

Widget DefaultButton({
  required String name,
  double? width,
  double? height,
  double? fontSize,
  String? color,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                MyColor().black,
                MyColor().darkOrange,
              ])),
      child: Center(
        child: Text(
          "${name}",
          style: TextStyle(
            color: MyColor().white,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
    );
