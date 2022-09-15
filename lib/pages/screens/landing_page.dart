import 'dart:async';

import 'package:coffe_task1_gdsc/pages/screens/bottom_nav_bar.dart';
import 'package:coffe_task1_gdsc/utilities/routes.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(SpecialRoutes.bottomNavBar));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BottomNavBar(),
      ),
    );
  }
}
