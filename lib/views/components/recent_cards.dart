import 'package:flutter/material.dart';

class GreyBox extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget? child;

  const GreyBox({
    super.key,
    this.width = 94,
    this.height = 134,
    this.color = const Color.fromRGBO(221, 221, 221, 100),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}