


import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';


class ArrowBack extends StatelessWidget {
  const ArrowBack({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Icon(
        Icons.arrow_back_ios,
        color: kBlackColor,
        size: 20,
      ),
    );
  }
}
