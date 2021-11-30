import 'package:bmi_app/core/constants.dart';
import 'package:flutter/material.dart';

class ValueSelector extends StatelessWidget {
  final String title;
  final int initialValue;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  const ValueSelector({
    Key? key,
    required this.title,
    required this.initialValue,
    required this.onDecrease,
    required this.onIncrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: kUnselectedLabelColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              initialValue.toString(),
              style: const TextStyle(
                fontSize: kLargeFontSize,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton(onPressed: onDecrease, iconData: Icons.remove),
              _buildButton(onPressed: onIncrease, iconData: Icons.add),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required VoidCallback onPressed,
    required IconData iconData,
  }) {
    return RawMaterialButton(
      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: kIconButtonColor,
      child: Icon(iconData),
      constraints: BoxConstraints.tight(const Size.square(46.0)),
      // padding: const EdgeInsets.all(10.0),
      shape: const CircleBorder(),
    );
  }
}
