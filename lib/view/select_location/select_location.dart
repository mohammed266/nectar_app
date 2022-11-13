import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/core/app_router/app_router.dart';
import 'package:mido_app/widgets/confirm_button.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../widgets/drop_menu.dart';
import '../nav_bar/nav_bar_view.dart';

// ignore: must_be_immutable
class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image(
                image: AssetImage(getAsset('location')),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
              ),
              const SizedBox(height: 20),
              MyText(
                data: 'Select Your Location',
                color: kBlackColor,
                textAlign: TextAlign.center,
                fontSize: 15,
              ),
              MyText(
                data:
                    'Switch on your location to stay in tune with \nwhat’s happening in your area',
                color: kGrayColor,
                fontSize: 10,
                textAlign: TextAlign.center,
                verticalMargin: 10,
              ),
              DropMenu(
                data: 'Your Zone',
                items: const ['Cairo', 'Alex', 'Mansoura', 'Tanta'],
                onChanged: (v) {
                  print('your zone is $v');
                },
              ),
              DropMenu(
                data: 'Your Area',
                items: const ['Maadi', 'Geza', 'Tahrer'],
                onChanged: (v) {
                  print('your Area is $v');
                },
              ),
              const SizedBox(height: 30),
              ConfirmButton(
                title: 'Submit',
                onPressed: ()=> AppRouter.navigateTo(context, const NavBarScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
