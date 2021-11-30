import 'package:flutter/material.dart';

import 'package:bmi_app/core/constants.dart';

class ValueSlider extends StatelessWidget {
  final int initialValue;
  final String title;
  final String valueSuffix;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;

  const ValueSlider({
    Key? key,
    required this.initialValue,
    required this.title,
    required this.valueSuffix,
    required this.onChanged,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kUnselectedLabelColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      initialValue.toString(),
                      style: const TextStyle(
                        fontSize: kLargeFontSize,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kUnselectedLabelColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SliderTheme(
            data: SliderThemeData(
              // rangeThumbShape: RangeSliderThumbShape(),
              trackHeight: 2.0,
              thumbColor: kDefaultButtonColor,
              overlayColor: kDefaultButtonColor.withOpacity(0.15),
              activeTrackColor: kLabelColor,
              inactiveTrackColor: kUnselectedLabelColor,
              // thumbShape: const RoundSliderThumbShape(
              //   enabledThumbRadius: 14.0,
              // ),
            ),
            child: Slider(
              min: min,
              max: max,
              value: initialValue.toDouble(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
