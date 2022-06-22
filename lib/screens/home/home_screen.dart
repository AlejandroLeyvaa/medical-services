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
              FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: AssetImage('assets/Initial-Image.png'),
                  width: double.infinity,
                  height: size.height * 0.6,
                  fit: BoxFit.cover),
              const SizedBox(height: 24),
              const CopyText(
                copyText: copyText,
              ),
              LargeButton()
            ],
          )),
    );
  }
}
