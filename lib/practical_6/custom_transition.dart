import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical5_best_folk_medicine_app/practical_6/increment.dart';

class CustomTransition extends PageRouteBuilder {
  final Widget child;

  CustomTransition({required this.child})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                child,
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1),
            barrierColor: Colors.red,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0,-1), end: Offset(0,0))
                          .animate(animation),
                  child: child,
                ));
}
