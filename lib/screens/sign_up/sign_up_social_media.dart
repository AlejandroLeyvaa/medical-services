import 'package:flutter/material.dart';
import 'package:medical_services/widgets/buttons/large_button.dart';
import 'package:medical_services/widgets/buttons/social_media_button.dart';

class SignUpSocialMediaScreen extends StatelessWidget {
  const SignUpSocialMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
          context: context,
          removeLeft: true,
          removeTop: true,
          removeRight: true,
          removeBottom: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.6,
                padding: EdgeInsets.all(16),
                child: Image(
                    image: const AssetImage('assets/Sign-Image.png'),
                    width: double.infinity,
                    height: size.height * 0.6,
                    fit: BoxFit.fitWidth),
              ),
              SizedBox(
                  height: 24,
                  width: double.infinity,
                  child: Container(
                    height: double.maxFinite,
                  )),
              _ButtonList(size: size)
            ],
          )),
    );
  }
}

class _ButtonList extends StatelessWidget {
  const _ButtonList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.4 - 24,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SocialMediaButton(
              customText: 'Continue with Facebook',
              socialMediaIcon: Icons.facebook),
          const SizedBox(height: 16),
          LargeButton(
            color: Color.fromRGBO(86, 94, 214, 100),
            textColor: Color.fromRGBO(225, 239, 255, 100),
            containerHeight: size.height * 0.25,
            buttonHeight: 60,
            customText: 'Sign with password',
            buttonAction: () => Navigator.pushNamed(context, 'signUp'),
          )
        ],
      ),
    );
  }
}
