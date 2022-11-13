import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/app_router/app_router.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/my_text.dart';
import '../signIn_or_logIn/singIn_or_logIn.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              getAsset('on_boarding'),
              width: getWidth(context, 1),
              height: getHeight(context, 1, subtractAppBar: false),
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage(getAsset('icon1')),
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: MyText(
                      data: 'Welcome\nto our store',
                      color: kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MyText(
                    data: 'get your groceries in as fast as one hour',
                    color: kGrayColor,
                    fontSize: 13,
                    textAlign: TextAlign.center,
                  ),
                  ConfirmButton(
                    verticalMargin: 20,
                    title: 'Get Started',
                    onPressed: ()=> AppRouter.navigateAndPopAll(context, const SignInOrLogIInScreen()),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
