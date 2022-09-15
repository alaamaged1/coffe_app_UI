import 'package:coffe_task1_gdsc/pages/shared/coffe_size_Button.dart';
import 'package:coffe_task1_gdsc/utilities/text.dart';
import 'package:flutter/material.dart';

class CoffeDetails extends StatelessWidget {
  final String coffePhoto;
  const CoffeDetails({Key? key, required this.coffePhoto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    coffePhoto,
                    width: size.width,
                    height: size.height * 0.38,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    // size.height * 0.001,
                    child: Opacity(
                      opacity: 0.8,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Cappuccino',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      'With Chocolate',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    )
                                  ],
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                        Text('4.9',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.59,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.grey[200],
                          //  const Color.fromRGBO(166, 166, 170, 0.01),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              24.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(Icons.invert_colors_off_rounded),
                                const Text(
                                  'Coffe',
                                ),
                                Container(
                                  width: 1.0,
                                  height: 20.0,
                                  color: Colors.black,
                                ),
                                const Icon(Icons.cruelty_free_sharp),
                                const Text(
                                  'Chocoloate',
                                ),
                                Container(
                                  width: 1.0,
                                  height: 20.0,
                                  color: Colors.black,
                                ),
                                const Icon(Icons.coffee_rounded),
                                const Text(
                                  'Medium Roasted',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          'Coffee Size',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        /// Coffe Size
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CoffeButtonSize(
                                coffeSize: 'Small',
                                buttonColor: Theme.of(context).primaryColor),
                            const CoffeButtonSize(
                                coffeSize: 'Medium', buttonColor: Colors.white),
                            const CoffeButtonSize(
                                coffeSize: 'Large', buttonColor: Colors.white),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          'About',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          AppText.aboutCoffeDetails,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Card(
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              24.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Add To Cart',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                Container(
                                  width: 1.0,
                                  height: 20.0,
                                  color: Colors.white,
                                ),
                                Text(
                                  '50 k',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
