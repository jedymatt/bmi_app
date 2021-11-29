import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  const IconContent({Key? key, required this.iconData, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Icon(
              iconData,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(label),
        ],
      ),
    );
  }
}
