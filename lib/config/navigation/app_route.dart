import 'package:api_bloc_cubit/config/navigation/route_name.dart';
import 'package:api_bloc_cubit/features/dashboard/presentaion/pages/dashboard.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login_screen.dart';


class AppRoute {
static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Route generateRoute(RouteSettings settings){

  switch (settings.name) {
      case RouteName.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );

      case RouteName.dashboard:
        return MaterialPageRoute(
          builder: (_) => const Dashboard(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
}

}
}