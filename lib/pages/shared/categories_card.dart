import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String cappuccinoPhoto;
  final int price;
  final String tag;
  const CategoryCard({
    Key? key,
    required this.cappuccinoPhoto,
    required this.price,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  // color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(300.0),
                    child: Image.network(
                      cappuccinoPhoto,
                      fit: BoxFit.cover,
                      height: size.height * 0.18,
                      width: size.width * 0.38,
                    )),
              ),
              Text(
                'Cappuccino',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'With Chocolate',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '${price.toString()} k',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.066,
                    child: FloatingActionButton(
                      heroTag: tag,
                      onPressed: () {},
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const Icon(
                        Icons.add,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
