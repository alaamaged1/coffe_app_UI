import 'package:flutter/material.dart';
// class ModefiedCategoryButton extends StatelessWidget {
//   const ModefiedCategoryButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class ModefiedFloatingActionButton extends StatelessWidget {
  final Widget title;
  final Widget coffeIcon;
  final Color iconColor;
  final String tag;
  const ModefiedFloatingActionButton(
      {Key? key,
      required this.title,
      required this.coffeIcon,
      required this.iconColor,
      required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        heroTag: tag,
        label: title,
        icon: coffeIcon,
        backgroundColor: iconColor,
        elevation: 0.6,
      ),
    );
  }
}
