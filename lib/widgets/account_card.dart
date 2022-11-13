import 'package:flutter/material.dart';

import '../constants.dart';

class AccountCard extends StatelessWidget {
  const AccountCard(
      {Key? key,
      required this.title,
      required this.leading,
      required this.onTap})
      : super(key: key);

  final String title;
  final IconData leading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: kGrayColor.withOpacity(0.6),
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            color: kBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(
          leading,
          color: kBlackColor,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: kBlackColor,
          size: 20,
        ),
      ),
    );
  }
}
