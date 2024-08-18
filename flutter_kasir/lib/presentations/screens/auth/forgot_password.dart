import 'package:flutter/material.dart';
import 'package:flutter_kasir/presentations/widgets/main_filled_button.dart';
import 'package:flutter_kasir/presentations/widgets/main_text_form_filled.dart';
import 'package:flutter_kasir/presentations/widgets/toggle_theme.dart';
import 'package:sizer/sizer.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
          actions: [
            const ToggleTheme(),
          ],
        ),
        body: Center(
          child: SizedBox(
            width: Device.screenType == ScreenType.tablet &&
                    Device.orientation == Orientation.landscape
                ? MediaQuery.sizeOf(context).width * 0.60
                : Device.screenType == ScreenType.mobile
                    ? MediaQuery.sizeOf(context).width * 0.85
                    : MediaQuery.sizeOf(context).width * 0.90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text('Forgot your password?',
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 10),
                Text(
                    'Enter your email address and we will send you a link to reset your password',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 35),
                MainTextFormField(
                    focusNode: FocusNode(),
                    controller: TextEditingController()),
                const Spacer(),
                MainFilledButton(
                  text: 'Continue',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ));
  }
}
