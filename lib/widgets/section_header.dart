




import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key, required this.title, required this.onPressed}) : super(key: key);

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          data: title,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        TextButton(
          onPressed: onPressed,
          child: MyText(
            data: 'See all',
            fontSize: 14,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}