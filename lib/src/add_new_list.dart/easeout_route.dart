import 'package:flutter/material.dart';

class EaseOutRoute extends PageRouteBuilder{

  final Widget listCreatePage;
  EaseOutRoute({@required this.listCreatePage}):super(
    pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) => listCreatePage,
    transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
    ) => SlideTransition(
      position: Tween<Offset>(begin: const Offset(1, 0),
      end: Offset.zero
      ).animate(animation),
      child: child,
    )
  );
}