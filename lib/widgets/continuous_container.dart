import 'package:flutter/material.dart';

class ContinuousContainer extends StatelessWidget {
// 100 - 100 - 40

  ContinuousContainer({
    super.key,
    required this.height,
    required this.width,
    required this.border,
    required this.child,
    this.color,
  });

  final double height;
  final double width;
  final double border;
  final Widget child;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(border),
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(border),
        ),
        child: child,
      ),
    );
  }
}
