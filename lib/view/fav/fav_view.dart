import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/fav_card.dart';
import '../../widgets/my_text.dart';

class FavView extends StatelessWidget {
  const FavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: MyText(
          data: 'favourite',
          color: kBlackColor,
        ),
      ),
      body: Column(
        children: [
          Divider(height: 1, color: kBlackColor.withOpacity(0.6)),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) => FavCard(
                image: favCartItems[index]['image'],
                price: favCartItems[index]['price'],
                description: favCartItems[index]['description'],
                title: favCartItems[index]['title'],
                onTap: (){
                  print('midoooo');
                },
              ),
              separatorBuilder: (context, index) =>
                  Divider(height: 1, color: kBlackColor.withOpacity(0.6)),
              itemCount: favCartItems.length,
            ),
          ),
          ConfirmButton(
            title: 'Add All To Cart',
            verticalMargin: 10,
            horizontalMargin: 20,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> favCartItems = [
  {
    'title': "Sprite Can",
    "price": 1.50,
    "description": "325 ml",
    'image': 'coca1',
  },
  {
    'title': "Bell Paper Red",
    "price": 3.99,
    "description": "2 Pcs",
    'image': 'tomato',
  },
  {
    'title': "Organic Banana",
    "price": 4.99,
    "description": "7 Pcs",
    'image': 'banana',
  },
];
