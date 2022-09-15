import 'package:flutter/material.dart';

class CoffeButtonSize extends StatelessWidget {
  final String coffeSize;
  final Color buttonColor;
  const CoffeButtonSize({
    Key? key,
    required this.coffeSize,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24.0,
          ),
        ),
        color: buttonColor,
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
            child: Text(
              coffeSize,
              style: TextStyle(
                color: (coffeSize == 'Small' ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
