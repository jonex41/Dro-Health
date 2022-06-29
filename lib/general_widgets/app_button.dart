import 'package:flutter/material.dart';
import '../Utils/colors.dart';


class AppButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient = const LinearGradient(
      colors: [kPrimaryStartGradientColor, kPrimaryLightColor]);
  final double width;
  final double height;
  final VoidCallback onPressed;

  const AppButton({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const []),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
