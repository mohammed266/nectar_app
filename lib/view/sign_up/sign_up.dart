import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mido_app/core/app_router/app_router.dart';
import 'package:mido_app/view/log_in/log_in.dart';
import 'package:mido_app/widgets/confirm_button.dart';

import '../../constants.dart';
import '../../widgets/input_form_fild.dart';
import '../../widgets/my_text.dart';
import '../otp/otp.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
              SizedBox(height: getHeight(context, 13,subtractAppBar: false)),
              const MyText(
                data: 'SignUp',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                verticalMargin: 10,
              ),
              MyText(
                data: 'Enter your credentials to continue',
                fontSize: 14,
                color: kGrayColor,
              ),
              const InputFormField(
                // verticalMargin: 30,
                labelText: 'UserName',
                keyboardType: TextInputType.name,
              ),
              // const SizedBox(height: 20),
              const InputFormField(
                verticalMargin: 20,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const InputFormField(
                labelText: 'Password',
                secure: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'By continuing you agree to our',
                    style: TextStyle(
                       fontSize: 11,
                      color: kGrayColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(
                          fontSize: 11,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextSpan(
                        text: ' and',
                        style: TextStyle(
                           fontSize: 11,
                          color: kGrayColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Privacy Policy.',
                        style: TextStyle(
                           fontSize: 11,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('ssss');
                          },
                      ),
                    ],
                  ),
                ),
              ),
              ConfirmButton(
                  title: 'Sing Up',
                onPressed: ()=> AppRouter.navigateTo(context, const OtpScreen()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(
                    data: 'Already have an account?',
                    fontSize: 12,
                  ),
                  TextButton(
                    onPressed: ()=> AppRouter.navigateAndPopAll(context, const LogInScreen()),
                    child: MyText(
                      data: 'LogIn',
                      color: kPrimaryColor,
                      fontSize: 12,
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
