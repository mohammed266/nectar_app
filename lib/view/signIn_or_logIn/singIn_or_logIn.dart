import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/core/app_router/app_router.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../widgets/confirm_button.dart';
import '../log_in/log_in.dart';
import '../sign_up/sign_up.dart';

class SignInOrLogIInScreen extends StatelessWidget {
  const SignInOrLogIInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              getAsset('image1'),
              height: getHeight(context, 2.4),
              width: getWidth(context, 1),
              fit: BoxFit.fill,
            ),
            const MyText(
              data: 'Get your groceries\nwith nectar',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              horizontalMargin: 20,
              verticalMargin: 30,
            ),
            ConfirmButton(
              title: 'Log in',
              onPressed: ()=> AppRouter.navigateAndPopAll(context, const LogInScreen()),
              horizontalMargin: 20,
              verticalMargin: 30,
            ),
            ConfirmButton(
              title: 'Create an account',
              onPressed: ()=> AppRouter.navigateAndPopAll(context, const SignUpScreen()),
              backgroundColor: Colors.transparent,
              titleColor: kPrimaryColor,
              // verticalMargin: 20,
              horizontalMargin: 20,
            ),
          ],
        ),
      ),
    );
  }
}
