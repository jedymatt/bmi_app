import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? margin;

  const CustomCard({Key? key, this.child, this.color, this.onTap, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: child,
      ),
    );
  }
}
