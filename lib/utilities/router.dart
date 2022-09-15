import 'package:coffe_task1_gdsc/pages/screens/bottom_nav_bar.dart';
import 'package:coffe_task1_gdsc/pages/screens/coffe_details.dart';
import 'package:coffe_task1_gdsc/pages/screens/home_page.dart';
import 'package:coffe_task1_gdsc/pages/screens/onboarding_page.dart';
import 'package:coffe_task1_gdsc/utilities/assets.dart';
import 'package:coffe_task1_gdsc/utilities/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SpecialRoutes.homeScreen:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: routeSettings,
      );
    case SpecialRoutes.bottomNavBar:
      return MaterialPageRoute(
        builder: (_) => const BottomNavBar(),
        settings: routeSettings,
      );
    case SpecialRoutes.coffeDetails:
      return MaterialPageRoute(
          builder: (_) =>
              const CoffeDetails(coffePhoto: AppAssets.cupchinoPhoto1),
          settings: routeSettings);

    // first Page
    case SpecialRoutes.onboarding:
      return MaterialPageRoute(
        builder: (_) => const OnboardingScreen(),
        settings: routeSettings,
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: routeSettings,
      );
  }
}
