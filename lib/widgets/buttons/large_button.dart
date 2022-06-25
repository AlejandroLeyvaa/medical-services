import 'package:flutter/material.dart';
import 'package:medical_services/widgets/widgets.dart';

class LargeButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double customHeight;
  final String customText;
  final String routeName;

  const LargeButton(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.customHeight,
      required this.customText,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        height: size.height * 0.25,
        alignment: Alignment.bottomCenter,
        child: CustomButton(
            size: size,
            color: color,
            textColor: textColor,
            customHeight: customHeight,
            customText: customText,
            routeName: routeName));
  }
}
