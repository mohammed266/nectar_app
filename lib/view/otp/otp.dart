import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/my_text.dart';

import '../../core/app_router/app_router.dart';
import '../../widgets/arrow_back.dart';
import '../../widgets/arrow_forward.dart';
import '../../widgets/input_form_fild.dart';
import '../otp2/otp2.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
                data: 'Enter your mobile number',
                fontSize: 14,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
              const InputFormField(
                verticalMargin: 20,
                labelText: 'Mobile Number',
                keyboardType: TextInputType.number,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ArrowForward(
                  onTap: () =>
                      AppRouter.navigateTo(context, const Otp2Screen()),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
