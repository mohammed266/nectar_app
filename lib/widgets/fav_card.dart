import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class FavCard extends StatelessWidget {
  const FavCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price, required this.onTap})
      : super(key: key);

  final String image, title, description;
  final double price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(getAsset(image)),width: 60,),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                  data: title,
                  color: kBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
              ),
              const SizedBox(height: 4),
              MyText(data: description, color: kGrayColor, fontSize: 12),
            ],
          ),
          // const SizedBox(width: 5),
          const Spacer(),
          MyText(data: '\$$price', fontSize: 14, color: kBlackColor,fontWeight: FontWeight.w600),
          const SizedBox(width: 5),
          InkWell(
              onTap: onTap,
              child: Icon(Icons.arrow_forward_ios, size: 15,color: kBlackColor)),
        ],
      ),
    );
  }
}
