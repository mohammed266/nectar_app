import 'package:flutter/material.dart';

import '../../constants.dart';
import '../Explore/explore_view.dart';
import '../account/account_view.dart';
import '../cart/cart_view.dart';
import '../fav/fav_view.dart';
import '../home/home_view.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {

  int currentIndex = 0;

  final List pages = [
    const HomeView(),
    const ExploreView(),
    const CartView(),
    const FavView(),
    const AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGrayColor,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(getAsset('shop')),
              color: currentIndex == 0 ? kPrimaryColor : kBlackColor,
            ),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(getAsset('search2')),
              color: currentIndex == 1 ? kPrimaryColor : kBlackColor,
            ),
            label: 'explore',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(getAsset('cart')),
              color: currentIndex == 2 ? kPrimaryColor : kBlackColor,
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(getAsset('heart')),
              color: currentIndex == 3 ? kPrimaryColor : kBlackColor,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(getAsset('user')),
              color: currentIndex == 4 ? kPrimaryColor : kBlackColor,
            ),
            label: 'account',
          ),
        ],
      ),
    );
  }
}

/*class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarScreen> {

  int currentIndex = 0;

  List content = [
    ['shop', 'Shops', HomeView()],
    ['search2', 'Explore', Center(child: Text('Explore'))],
    ['cart', 'Cart', Center(child: Text('Cart'))],
    ['heart', 'Favourite', Center(child: Text('Favourite'))],
    ['user', 'Account', Center(child: Text('Account'))],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content[currentIndex][2],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (v) {
          currentIndex = v;
          setState(() {});
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBlackColor,
        items: content.map((e) {
          final index = content.indexOf(e);
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    getAsset(e[0]),
                    height: 30,
                    width: 30,
                    color: currentIndex == index ? kPrimaryColor : kBlackColor,
                  ),
                ),
                MyText(
                  data: e[1],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: currentIndex == index ? kPrimaryColor : kBlackColor,
                ),
              ],
            ),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}*/
