import 'package:flutter/material.dart';

class AppProductCardStarGen extends StatelessWidget {
  final int? starNumber;

  const AppProductCardStarGen({super.key,required this.starNumber});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        List<Widget> stars = List.generate(starNumber!, (index) {
          return Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 179, 0),
            size: 15.0,
          );
        }).toList();

        return Row(
          children: stars,
        );
      },
    );
  }
}