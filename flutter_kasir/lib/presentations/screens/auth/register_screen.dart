import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../core/routes/routes.dart';
import '../../widgets/main_elevated_button.dart';
import '../../widgets/main_filled_button.dart';
import '../../widgets/main_text_form_filled.dart';
import '../../widgets/toggle_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Register'),
        actions: const [ToggleTheme()],
      ),
      bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: MainFilledButton(text: 'Register', onPressed: () {})),
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Device.screenType == ScreenType.tablet &&
                        Device.orientation == Orientation.landscape
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Device.screenType == ScreenType.mobile
                        ? 16
                        : 32),
            child: SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Wrap(
                    runSpacing: 16,
                    children: [
                      MainTextFormField(
                          focusNode: FocusNode(),
                          controller: TextEditingController(),
                          hintText: 'Full Name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next),
                      MainTextFormField(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        focusNode: FocusNode(),
                        controller: TextEditingController(),
                      ),
                      MainTextFormField(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        focusNode: FocusNode(),
                        controller: TextEditingController(),
                        isPassword: true,
                      ),
                      MainTextFormField(
                        hintText: 'Confirm Password',
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        focusNode: FocusNode(),
                        controller: TextEditingController(),
                        isPassword: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Have an account?'),
                      const SizedBox(width: 8),
                      MainElevatedButton(
                          text: 'Login',
                          onPressed: () {
                            context.goNamed(RoutesName.register.name);
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
