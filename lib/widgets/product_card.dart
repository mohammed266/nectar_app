import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  final String image, title, description, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child:
               Image.network(image),
              // Image.asset(
              //   getAsset(image),
              // ),
            ),
          ),
          MyText(
            data: title,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          MyText(
            data: description,
            color: kGrayColor,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                data: '\$' + price,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: const Icon(Icons.add, color: Colors.white),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrayColor.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
