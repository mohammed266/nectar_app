import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/confirm_button.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../core/app_router/app_router.dart';
import '../../widgets/input_form_fild.dart';
import '../nav_bar/nav_bar_view.dart';
import '../sign_up/sign_up.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 20),
              Image.asset(
                getAsset('icon2'),
                height: 50,
                width: 50,
              ),
              const MyText(
                data: 'Loging',
                fontWeight: FontWeight.w600,
                fontSize: 25,
                verticalMargin: 10,
              ),
              const MyText(
                data: 'Enter your emails and password',
                fontSize: 16,
              ),
              const InputFormField(
                verticalMargin: 30,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const InputFormField(
                labelText: 'Password',
                secure: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: MyText(
                    data: 'Forgot Password ?',
                    // fontSize: 10,
                    color: kBlackColor,
                  ),
                ),
              ),
              ConfirmButton(
                title: 'Log In',
                onPressed: () => AppRouter.navigateAndPopAll(
                  context,
                  const NavBarScreen(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(data: 'Don’t have an account?'),
                  TextButton(
                    onPressed: () => AppRouter.navigateAndPopAll(
                      context,
                      const SignUpScreen(),
                    ),
                    child: MyText(
                      data: 'SingUp',
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
