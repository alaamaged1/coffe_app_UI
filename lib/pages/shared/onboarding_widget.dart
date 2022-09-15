import 'package:flutter/material.dart';

import '../../utilities/assets.dart';
import '../../utilities/routes.dart';
import '../screens/onboarding_page.dart';
import 'main_button.dart';
import 'onboarding_indicator.dart';

class OnboardingWidget extends StatelessWidget {
  final String photo, title, description;
  const OnboardingWidget({
    Key? key,
    required this.photo,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Image.network(
          photo,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.11,
              ),
              SizedBox(
                width: size.width * 0.4,
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              // ...List.generate(
              //   AppAssets.onBoardingPhotos.length,
              //   (i) => const Padding(
              //     padding: EdgeInsets.only(right: 12),
              //     child: DotIndicator(),
              //   ),
              // ),
              SizedBox(
                height: 4,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: size.width * 0.42),
                  scrollDirection: Axis.horizontal,
                  itemCount: AppAssets.onBoardingPhotos.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIndicator(
                            isActive: index == OnboardingScreen.pageIndex),
                      )),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              MainButton(
                text: 'Get Started',
                ontap: () => Navigator.of(context).pushNamed(
                  SpecialRoutes.bottomNavBar,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
