import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 22 : 8,
      height: 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          color: isActive ? Theme.of(context).primaryColor : Colors.white),
    );
  }
}
