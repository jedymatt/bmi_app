import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;

  const RoundedCard(
      {Key? key, this.child, this.backgroundColor, this.onTap, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: backgroundColor,
        ),
        margin: margin,
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }
}
