import 'package:coffe_task1_gdsc/utilities/routes.dart';
import 'package:coffe_task1_gdsc/utilities/theme.dart';
import 'package:flutter/material.dart';

import 'utilities/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      initialRoute: SpecialRoutes.onboarding,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
