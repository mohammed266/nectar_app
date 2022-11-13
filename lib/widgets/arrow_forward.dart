

import 'package:flutter/material.dart';

import '../constants.dart';

class ArrowForward extends StatelessWidget {
  const ArrowForward({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
