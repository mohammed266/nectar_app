import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mido_app/widgets/cart_card.dart';

import '../../constants.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/my_text.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          data: 'My Cart',
          color: kBlackColor,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(height: 1, color: kBlackColor),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              separatorBuilder: (context, index) => Divider(color: kBlackColor),
              itemCount: cartItems.length,
              itemBuilder: (context, index) => CartCard(
                image: cartItems[index]['image'],
                title: cartItems[index]['title'],
                description: cartItems[index]['description'],
                price: cartItems[index]['price'],
                onRemove: (){
                  cartItems.removeAt(index);
                  setState(() {});
                },
              ),
            ),
          ),
          ConfirmButton(
            title: 'Checkout',
            verticalMargin: 10,
            horizontalMargin: 20,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> cartItems = [
  {
    'title': "Organic Banana",
    "price": 4.99,
    "description": "7 Pcs",
    'image': 'banana',
  },
  {
    'title': "Bell Paper Red",
    "price": 3.99,
    "description": "2 Pcs",
    'image': 'tomato',
  },
];
