import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../widgets/product_card.dart';
import '../../widgets/search_field.dart';
import '../../widgets/section_header.dart';
import 'home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = HomeController();

  @override
  void initState() {
    controller.getProductList().then((value) {
      print('>>>>>>>>>>' + value.toString());
      setState(() {
        controller.loading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Image.asset(getAsset('logoH'), height: 30, width: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage(getAsset('marker')),
                    height: 15,
                    width: 15),
                const SizedBox(width: 4),
                const MyText(data: 'Dhaka, Banassre'),
              ],
            ),
          ),
          SearchField(
            onTap: () {},
            isSearch: false,
          ),
          Expanded(
            child: ListView(
              children: [
                SectionHeader(
                  title: 'Exclusive Offer',
                  onPressed: () {},
                ),
                controller.loading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(kPrimaryColor),
                        ),
                      )
                    : SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: controller.product.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const ProductCard(
                            image: 'banana',
                            title: 'Organic Bananas',
                            description: '7pcs',
                            price: '4.99',
                            // title: '${controller.product[index]['title']}',
                            // description:
                            //     '${controller.product[index]['description']}',
                            // image: '${controller.product[index]['image']}',
                            // price: '${controller.product[index]['price']}',
                          ),
                        ),
                      ),
                const SizedBox(height: 20),
                SectionHeader(
                  title: 'Best Selling',
                  onPressed: () {},
                ),
                // SizedBox(
                //   height: 200,
                //   child: ListView.builder(
                //     itemCount: 4,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (BuildContext context, int index) =>
                //         const ProductCard(
                //       image: 'banana',
                //       title: 'Organic Bananas',
                //       description: '7pcs',
                //       price: '4.99',
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
