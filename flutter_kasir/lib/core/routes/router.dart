import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kasir/core/routes/route_observer.dart';
import 'package:flutter_kasir/core/routes/routes.dart';
import 'package:flutter_kasir/presentations/screens/auth/forgot_password.dart';
import 'package:flutter_kasir/presentations/screens/auth/login_screen.dart';
import 'package:flutter_kasir/presentations/screens/auth/register_screen.dart';
import 'package:flutter_kasir/presentations/screens/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../presentations/screens/dashboard_screen.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

class AppRouter {
  var authBloc = BlocProvider(
    create: (context) => AuthBloc(),
  );

  static GoRouter router = GoRouter(
    observers: [GoRouterObserver()],
    debugLogDiagnostics: true,
    routerNeglect: true,
    initialLocation: RoutesName.dashboard.name,
    routes: [
      GoRoute(
          path: RoutesName.onboarding.name,
          name: RoutesName.onboarding.name,
          builder: (context, state) => const OnboardingScreen(),
          routes: [
            GoRoute(
              path: RoutesName.login.name,
              name: RoutesName.login.name,
              builder: (context, state) => const LoginScreen(),
            ),
            GoRoute(
              path: RoutesName.register.name,
              name: RoutesName.register.name,
              builder: (context, state) => const RegisterScreen(),
            ),
            GoRoute(
              path: RoutesName.forgotPassword.name,
              name: RoutesName.forgotPassword.name,
              builder: (context, state) => const ForgotPassword(),
            ),
          ]),
      GoRoute(
        redirect: (context, state) {
          final authState = context.read<AuthBloc>().state;
          return authState.maybeWhen(
            initial: () => RoutesName.onboarding.name,
            authenticated: (_) => RoutesName.dashboard.name,
            unauthenticated: () => RoutesName.onboarding.name,
            orElse: () => null,
          );
        },
        path: RoutesName.dashboard.name,
        name: RoutesName.dashboard.name,
        builder: (context, state) => const DashboardScreen(),
      ),
      // Nested route for Dashboard with Bottom Navigation
      // ShellRoute(
      //     navigatorKey: _shellNavigatorKey,
      //     builder: (context, state, child) => DashboardScreen(
      //         // child: child,
      //         ),
      //
      //     // routes: [
      //     //   GoRoute(
      //     //     path: RoutesName.home.name,
      //     //     name: RoutesName.home.name,
      //     //     pageBuilder: (BuildContext context, GoRouterState state) {
      //     //       return slideTransition(state, child: const HomeScreen());
      //     //     },
      //     //   ),
      //     //   GoRoute(
      //     //       path: RoutesName.bookmark.name,
      //     //       name: RoutesName.bookmark.name,
      //     //       pageBuilder: (BuildContext context, GoRouterState state) {
      //     //         return slideTransition(state, child: const BookmarkScreen());
      //     //       }),
      //     //   GoRoute(
      //     //       path: RoutesName.notification.name,
      //     //       name: RoutesName.notification.name,
      //     //       pageBuilder: (BuildContext context, GoRouterState state) {
      //     //         return slideTransition(state,
      //     //             child: const NotificationScreen());
      //     //       }),
      //     //   GoRoute(
      //     //       path: RoutesName.profile.name,
      //     //       name: RoutesName.profile.name,
      //     //       pageBuilder: (BuildContext context, GoRouterState state) {
      //     //         return slideTransition(state, child: const ProfileScreen());
      //     //       },
      //     //       routes: [
      //     //         GoRoute(
      //     //           path: RoutesName.myOrder.name,
      //     //           name: RoutesName.myOrder.name,
      //     //           builder: (context, state) => const MyOrderScreen(),
      //     //         ),
      //     //         GoRoute(
      //     //             path: RoutesName.shippingAddresses.name,
      //     //             name: RoutesName.shippingAddresses.name,
      //     //             builder: (context, state) => const ShippingAddressScreen(),
      //     //             routes: [
      //     //               GoRoute(
      //     //                 path: RoutesName.addShippingAddress.name,
      //     //                 name: RoutesName.addShippingAddress.name,
      //     //                 builder: (context, state) =>
      //     //                 const ShippingAddressAddScreen(),
      //     //               ),
      //     //             ]),
      //     //         GoRoute(
      //     //           path: RoutesName.paymentMethod.name,
      //     //           name: RoutesName.paymentMethod.name,
      //     //           builder: (context, state) => const PaymentMethodScreen(),
      //     //         ),
      //     //         GoRoute(
      //     //           path: RoutesName.myReviews.name,
      //     //           name: RoutesName.myReviews.name,
      //     //           builder: (context, state) => const MyReviewsScreen(),
      //     //         ),
      //     //         GoRoute(
      //     //           path: RoutesName.setting.name,
      //     //           name: RoutesName.setting.name,
      //     //           builder: (context, state) => const SettingScreen(),
      //     //         ),
      //     //       ]),
      //     // ],
      //     ),
    ],
  );
}

// CustomTransitionPage<void> slideTransition(GoRouterState state,
//     {required Widget child}) {
//   return CustomTransitionPage<void>(
//     key: state.pageKey,
//     child: child,
//     barrierDismissible: true,
//     barrierColor: Colors.white,
//     opaque: false,
//     transitionDuration: const Duration(milliseconds: 500),
//     reverseTransitionDuration: const Duration(milliseconds: 500),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       final PageCubit pageCubit = BlocProvider.of<PageCubit>(context);
//       final previousIndex = pageCubit.previousIndex;
//       final currentIndex = pageCubit.state;
//
//       // Check if the current index is greater than the previous index
//       final isForward = previousIndex < currentIndex;
//
//       // Define the begin and end offsets based on the direction
//       final begin =
//       isForward ? const Offset(1.0, 0.0) : const Offset(-1.0, 0.0);
//       const end = Offset(0.0, 0.0);
//
//       final tween = Tween(begin: begin, end: end);
//       final offsetAnimation = animation.drive(tween);
//
//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }
