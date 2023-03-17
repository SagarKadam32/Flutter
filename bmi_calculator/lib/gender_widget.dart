import 'package:flutter/material.dart';
import 'constants.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({required this.icon, required this.gender});

  late final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
