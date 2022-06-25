import 'package:flutter/material.dart';
import 'package:medical_services/router/app_routes.dart';
import 'package:medical_services/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    final size = MediaQuery.of(context).size;
    const String copyText = 'We provide human services';

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
              Image(
                  image: const AssetImage('assets/Initial-Image.png'),
                  width: double.infinity,
                  height: size.height * 0.6,
                  fit: BoxFit.cover),
              const SizedBox(height: 24),
              const CopyText(
                copyText: copyText,
              ),
              const LargeButton(
                color: Color.fromRGBO(225, 239, 255, 100),
                textColor: Color.fromRGBO(86, 94, 214, 100),
                customHeight: 44.0,
                customText: 'Next',
                routeName: 'signUp',
              )
            ],
          )),
    );
  }
}
