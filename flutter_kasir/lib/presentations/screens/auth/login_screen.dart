import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/bloc/theme/theme_mode_cubit.dart';
import 'package:flutter_kasir/presentations/widgets/main_filled_button.dart';
import 'package:flutter_kasir/presentations/widgets/main_text_form_filled.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../core/routes/routes.dart';
import '../../widgets/main_elevated_button.dart';
import '../../widgets/toggle_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
        actions: const [ToggleTheme()],
      ),
      bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: MainFilledButton(text: 'Login', onPressed: () {})),
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
            child: ListView(
              shrinkWrap: true,
              children: [
                MainTextFormField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  focusNode: FocusNode(),
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 10),
                MainTextFormField(
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  focusNode: FocusNode(),
                  controller: TextEditingController(),
                  isPassword: true,
                ),
                TextButton(
                    onPressed: () {
                      context.goNamed(RoutesName.forgotPassword.name);
                    },
                    child: const Text('Forgot Password?')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    const SizedBox(width: 8),
                    MainElevatedButton(
                        text: 'Register',
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
    );
  }
}
