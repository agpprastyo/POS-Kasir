import 'package:flutter/material.dart';
import 'package:flutter_kasir/core/extension.dart';
import 'package:flutter_kasir/core/routes/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/main_filled_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: MainFilledButton(
            text: 'Get Started',
            onPressed: () {
              context.goNamed(RoutesName.login.name);
            },
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              // shrinkWrap: true,
              children: [
                const Spacer(),
                Icon(
                  Icons.ac_unit,
                  size: 35.0.sp,
                ),
                const SizedBox(height: 15),
                Text(
                  'Welcome to Kasir',
                  style: context.textTheme.headlineMedium,
                ),
                const Spacer(),
              ],
            ),
          ),
        ));
  }
}
