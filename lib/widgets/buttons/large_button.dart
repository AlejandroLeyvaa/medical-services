import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Color.fromRGBO(255, 239, 255, 100);
    final Color textColor = Color.fromRGBO(86, 94, 214, 100);

    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        height: size.height * 0.25,
        alignment: Alignment.bottomCenter,
        child: _Button(
          size: size,
          color: color,
          textColor: textColor,
        ));
  }
}

class _Button extends StatelessWidget {
  final Size size;
  final Color color;
  final Color textColor;

  const _Button(
      {Key? key,
      required this.size,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 40.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            elevation: 0.1,
            primary: color,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onPressed: () {
          Navigator.pushNamed(context, 'signUp');
        },
        child: Text(
          'Next',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
