import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color? color;

  const TextIcon(
      {Key? key, required this.iconData, required this.label, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Icon(
              iconData,
              color: color,
            ),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
