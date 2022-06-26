import 'package:flutter/material.dart';
import 'package:medical_services/widgets/widgets.dart';

class LargeButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double containerHeight;
  final double buttonHeight;
  final double horizontalPadding;
  final String customText;
  final Function buttonAction;

  const LargeButton(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.containerHeight,
      required this.buttonHeight,
      required this.customText,
      required this.buttonAction,
      this.horizontalPadding = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
        ),
        height: containerHeight,
        alignment: Alignment.bottomCenter,
        child: CustomButton(
          size: size,
          color: color,
          textColor: textColor,
          customHeight: buttonHeight,
          customText: customText,
          buttonAction: buttonAction,
        ));
  }
}
