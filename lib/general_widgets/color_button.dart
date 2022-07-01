import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Utils/constants.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton(
      {Key? key,
      required this.child,
      required this.width,
      required this.onPressed})
      : super(key: key);

  final void Function() onPressed;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      width: width,
      decoration: kButtonGradientColor,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent, shadowColor: Colors.transparent),
          child: child),
    );
  }
}
