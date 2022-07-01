import 'package:flutter/material.dart';

const kSilvershape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)));
final kButtonGradientColor = BoxDecoration(
  borderRadius: BorderRadius.circular(15.0),
  gradient: kGradient,
);

const kGradient = LinearGradient(
  colors: [
    Color(0xFF852CF7),
    Color(0xFFA03DF7),
  ],
  begin: FractionalOffset(-1.0, -1),
  end: FractionalOffset(-1.0, 1),
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
);
final kDownGradientColor = BoxDecoration(
  borderRadius: BorderRadius.circular(15.0),
  gradient: const LinearGradient(
    colors: [
      Color(0xFFFC7B6F),
      Color(0xFFE73B6A),
    ],
    begin: FractionalOffset(-1.0, -1),
    end: FractionalOffset(-1.0, 1),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  ),
);
