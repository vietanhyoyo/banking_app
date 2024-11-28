import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Application {
  static FluroRouter? router;

  static void navigateTo(BuildContext context, String route,
      {TransitionType? transition, bool replace = false}) {
    router!.navigateTo(context, route,
        transition: transition ?? TransitionType.fadeIn,
        replace: replace);
  }

  static void pop(BuildContext context, {List<dynamic>? result}) {
    router!.pop(context, result);
  }
}
