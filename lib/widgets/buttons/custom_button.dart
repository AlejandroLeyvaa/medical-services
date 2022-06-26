import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Size size;
  final Color color;
  final Color textColor;
  final double customHeight;
  final String customText;
  final Function buttonAction;

  const CustomButton(
      {Key? key,
      required this.size,
      required this.color,
      required this.textColor,
      required this.customHeight,
      required this.customText,
      required this.buttonAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: customHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            elevation: 0.1,
            primary: color,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onPressed: () => buttonAction(),
        child: Text(
          customText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
