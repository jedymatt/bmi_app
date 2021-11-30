import 'package:flutter/material.dart';

import 'package:bmi_app/core/constants.dart';

class BottomButton extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;

  const BottomButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kDefaultButtonColor,
      child: InkWell(
        onTap: widget.onTap,
        child: SizedBox(
          height: kToolbarHeight * 1.10,
          child: widget.child,
        ),
      ),
    );
  }
}
