import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData socialMediaIcon;
  final String customText;

  const SocialMediaButton(
      {Key? key, required this.socialMediaIcon, required this.customText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey _globalKey = GlobalKey();
    final Color color = Color.fromRGBO(255, 239, 255, 100);
    final Color textColor = Color.fromRGBO(86, 94, 214, 100);
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Color.fromRGBO(225, 239, 255, 1),
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _LeftContainer(
              size: size,
              socialMediaIcon: socialMediaIcon,
            ),
            _RightContainer(
              size: size,
              customText: customText,
            )
          ]),
    );
  }
}

class _LeftContainer extends StatelessWidget {
  final IconData socialMediaIcon;

  const _LeftContainer({
    Key? key,
    required this.size,
    required this.socialMediaIcon,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 4,
      height: 60,
      padding: const EdgeInsets.only(
        left: 0,
      ),
      child: Icon(
        socialMediaIcon,
        size: 32.0,
      ),
    );
  }
}

class _RightContainer extends StatelessWidget {
  final String customText;
  const _RightContainer({
    Key? key,
    required this.size,
    required this.customText,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width / 2.5,
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            customText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
