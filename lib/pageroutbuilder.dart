import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pageroutebuilder/2nd.dart';

class MyCustomRoute extends PageRouteBuilder {
  final Widget widget;
  MyCustomRoute({required this.widget})
      : super(
          transitionDuration: Duration(seconds: 2),
          pageBuilder: (context, animation, secondartAnimation) => widget,
          transitionsBuilder: (context, animation, secondartAnimation, child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
        );
}
