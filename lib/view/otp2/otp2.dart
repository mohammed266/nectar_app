import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/app_router/app_router.dart';
import '../../widgets/arrow_back.dart';
import '../../widgets/arrow_forward.dart';
import '../../widgets/input_form_fild.dart';
import '../../widgets/my_text.dart';
import '../select_location/select_location.dart';

class Otp2Screen extends StatelessWidget {
  const Otp2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(onTap: () => AppRouter.pop(context)),
              const SizedBox(height: 30),
              MyText(
                data: 'Enter your 4-digit code',
                fontSize: 14,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
              const InputFormField(
                verticalMargin: 20,
                labelText: 'Code',
                hintText: '_ _ _',
                keyboardType: TextInputType.number,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: MyText(
                      data: 'Resend Code',
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  ArrowForward(
                    onTap: () =>
                        AppRouter.navigateTo(context, const SelectLocationScreen()),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
