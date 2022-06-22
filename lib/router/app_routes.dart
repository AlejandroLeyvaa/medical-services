import 'package:flutter/material.dart';
import 'package:medical_services/models/menu_options.dart';
import 'package:medical_services/screens/home/home_screen.dart';
import 'package:medical_services/screens/physiotherapyServices/physiotherapy_services_screen.dart';
import 'package:medical_services/screens/sign_up/sign_up.dart';

class AppRoutes {
  static final initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    const MenuOptions(
        route: 'physiotherapyServices',
        icon: Icons.medical_services,
        name: 'Servicios Fisioterapeuticos',
        screen: PhysiotherapyServicesScreen()),
    const MenuOptions(
        route: 'signUp',
        icon: Icons.medical_services,
        name: 'Servicios Fisioterapeuticos',
        screen: SignUpScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomeScreen(),
    );
  }
}
