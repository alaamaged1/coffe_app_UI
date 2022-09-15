import 'package:coffe_task1_gdsc/utilities/assets.dart';
import 'package:flutter/material.dart';

import '../shared/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  static int pageIndex = 0;
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 3,
          onPageChanged: (index) {
            setState(() {
              OnboardingScreen.pageIndex = index;
            });
          },
          itemBuilder: (_, int index) => OnboardingWidget(
            photo: AppAssets.onBoardingPhotos[index],
            title: 'Good Coffe, Good Friends, let it Blends',
            description:
                'The best grain, the finest roast, very most powerful flavor ever.',
          ),
        ),
      ),
    );
  }
}
