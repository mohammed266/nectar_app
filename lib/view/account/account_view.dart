import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/confirm_button.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../widgets/account_card.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyText(
                        data: 'mido midoooo',
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.edit, color: kPrimaryColor, size: 20),
                    ],
                  ),
                  MyText(
                      data: 'test@gmail.com', color: kGrayColor, fontSize: 14),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        AccountCard(
          title: 'Orders',
          leading: Icons.business_center_outlined,
          onTap: () {},
        ),
        AccountCard(
          title: 'My Details',
          leading: Icons.description_outlined,
          onTap: () {},
        ),
        AccountCard(
          title: 'Delivery Address',
          leading: Icons.location_on,
          onTap: () {},
        ),
        AccountCard(
          title: 'Payment Methods',
          leading: Icons.payment,
          onTap: () {},
        ),
        AccountCard(
          title: 'Promo Cord',
          leading: Icons.card_membership_outlined,
          onTap: () {},
        ),
        AccountCard(
          title: 'Notification',
          leading: Icons.notifications_none,
          onTap: () {},
        ),
        AccountCard(
          title: 'Help',
          leading: Icons.help,
          onTap: () {},
        ),
        AccountCard(
          title: 'About',
          leading: Icons.details,
          onTap: () {},
        ),
        const SizedBox(height: 20),
        ConfirmButton(
          title: 'Log Out',
          titleColor: kPrimaryColor,
          backgroundColor: kLightGrayColor,
          verticalMargin: 20,
          horizontalMargin: 20,
          borderColor: kLightGrayColor,
          onPressed: (){
            print('llllll');
          },
        ),
      ],
    );
  }
}
