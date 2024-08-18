import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class GoRouterObserver extends NavigatorObserver {
  var logger = Logger();

  final void Function(Route<dynamic> route, Route<dynamic>? previousRoute)?
      onPush;
  final void Function(Route<dynamic> route, Route<dynamic>? previousRoute)?
      onPop;
  final void Function(Route<dynamic> route, Route<dynamic>? previousRoute)?
      onReplace;
  final void Function(Route<dynamic> route, Route<dynamic>? previousRoute)?
      onRemove;
  final void Function(Route<dynamic> route, Route<dynamic>? previousRoute)?
      onBuild;

  GoRouterObserver({
    this.onPush,
    this.onPop,
    this.onReplace,
    this.onRemove,
    this.onBuild,
  });

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (onPush != null) {
      onPush!(route, previousRoute);
      logger.d('Route pushed: $route from $previousRoute');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (onPop != null) {
      onPop!(route, previousRoute);
      logger.d('Route popped: $route from $previousRoute');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (onReplace != null) {
      onReplace!(newRoute!, oldRoute);
      logger.d('Route replaced: $newRoute from $oldRoute');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (onRemove != null) {
      onRemove!(route, previousRoute);
      logger.d('Route removed: $route from $previousRoute');
    }
  }
}
