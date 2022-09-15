import 'package:coffe_task1_gdsc/pages/shared/categories_button.dart';
import 'package:coffe_task1_gdsc/pages/shared/categories_card.dart';
import 'package:coffe_task1_gdsc/utilities/assets.dart';
import 'package:coffe_task1_gdsc/utilities/routes.dart';
import 'package:flutter/material.dart';

import '../shared/special_offer_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Theme.of(context).primaryColor,
                  foregroundImage: const NetworkImage(AppAssets.profilePhoto),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.brown,
                    ),
                    Text(
                      'Egypt, Helwan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.notification_add_sharp),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text('Good Morning, Alaa',
                style: Theme.of(context).textTheme.headline6),
            SizedBox(
              height: size.height * 0.05,
            ),
            TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                hintText: 'Search coffe..',
                hintStyle: Theme.of(context).textTheme.caption,
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: Icon(
                  Icons.apps_sharp,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text('Categories', style: Theme.of(context).textTheme.headline6),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ModefiedFloatingActionButton(
                    tag: "btn1",
                    title: Text(
                      'Capuccino',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    coffeIcon: const Icon(Icons.hot_tub_rounded),
                    iconColor: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: ModefiedFloatingActionButton(
                      tag: "btn2",
                      title: Text(
                        'Cold Brew',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      coffeIcon: const Icon(
                        Icons.coffee,
                        color: Colors.black,
                      ),
                      iconColor: Colors.white),
                ),
                Expanded(
                  child: ModefiedFloatingActionButton(
                      tag: "btn3",
                      title: Text(
                        'Expresos',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      coffeIcon: const Icon(
                        Icons.takeout_dining_outlined,
                        color: Colors.black,
                      ),
                      iconColor: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(SpecialRoutes.coffeDetails),
                  child: const Expanded(
                    child: CategoryCard(
                      tag: "btn4",
                      cappuccinoPhoto: AppAssets.cupchinoPhoto2,
                      price: 45,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(SpecialRoutes.coffeDetails),
                  child: const Expanded(
                    child: CategoryCard(
                      tag: "btn5",
                      cappuccinoPhoto: AppAssets.cupchinoPhoto1,
                      price: 50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text('Special Offer', style: Theme.of(context).textTheme.headline6),
            const SpecialOfferCard()
          ],
        ),
      ),
    ));
  }
}

// DecoratedBox(
//   decoration: BoxDecoration(
//     color: Theme.of(context).primaryColor,
//     borderRadius: BorderRadius.circular(
//       24.0,
//     ),
//   ),
//   child: ClipRRect(
//       borderRadius: BorderRadius.circular(300.0),
//       child: Image.network(
//         AppAssets.profilePhoto,
//         fit: BoxFit.cover,
//         height: 150.0,
//       )),
// ),
