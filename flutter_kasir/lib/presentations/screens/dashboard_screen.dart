import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/bloc/auth/auth_bloc.dart';
import 'package:flutter_kasir/core/routes/router.dart';
import 'package:flutter_kasir/presentations/widgets/main_filled_button.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/routes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Dashboard Screen'),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    unauthenticated: () {
                      context.pushReplacementNamed(RoutesName.onboarding.name);
                    });
              },
              child: MainFilledButton(
                  text: 'Logout',
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.loggedOut());
                    // Add logout function here
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
