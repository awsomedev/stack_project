import 'dart:ui';

import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer(
      {Key? key,
      this.color,
      this.height,
      this.width,
      this.child,
      this.borderRadius})
      : super(key: key);
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(15),
            color: color,
          ),
          child: child,
        ),
      ),
    );
  }
}
