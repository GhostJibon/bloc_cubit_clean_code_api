import 'dart:developer';

import 'package:flutter/material.dart';

class CustomNavigationObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    log('Route pushed: ${route.settings.name}');
    // Add your custom logic here when a new route is pushed
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    log('Route popped: ${route.settings.name}');
    // Add your custom logic here when a route is popped
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    log('Route replaced: ${newRoute!.settings.name}');
    // Add your custom logic here when a route is replaced
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    log('Route removed: ${route.settings.name}');
    // Add your custom logic here when a route is removed
  }

  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    log('User started a gesture');
    // Add your custom logic here when the user starts a gesture
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    log('User stopped a gesture');
    // Add your custom logic here when the user stops a gesture
  }

  // Add more methods as needed based on your requirements
}
