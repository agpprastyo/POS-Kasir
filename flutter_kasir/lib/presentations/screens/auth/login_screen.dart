import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/bloc/theme/theme_mode_cubit.dart';
import 'package:flutter_kasir/presentations/widgets/main_filled_button.dart';
import 'package:flutter_kasir/presentations/widgets/main_text_form_filled.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../core/routes/routes.dart';
import '../../widgets/main_elevated_button.dart';
import '../../widgets/toggle_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey loginFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
        actions: const [ToggleTheme()],
      ),
      bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: (message) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message!)));
                  },
                  authenticated: (user) {
                    context.goNamed(RoutesName.dashboard.name);
                  });
            },
            builder: (context, state) {
              return BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return MainFilledButton(
                      text: 'Login',
                      onPressed: () {
                        if ((loginFormKey.currentState as FormState)
                            .validate()) {
                          context.read<AuthBloc>().add(AuthEvent.loggedIn(
                              email: emailController.text,
                              password: passwordController.text));
                        }
                      });
                },
              );
            },
          )),
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
            child: Form(
              key: loginFormKey,
              child: ListView(
                shrinkWrap: true,
                children: [
                  MainTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      final emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    focusNode: FocusNode(),
                    controller: emailController,
                  ),
                  const SizedBox(height: 10),
                  MainTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    focusNode: FocusNode(),
                    controller: passwordController,
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
      ),
    );
  }
}
