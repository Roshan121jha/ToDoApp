import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingButtonOptions extends StatelessWidget {
  FloatingButtonOptions({
    this.animationController,
    this.icons,
  });

  final AnimationController animationController;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).cardColor;
    //Color foregroundColor = Theme.of(context).accentColor;
    return Container(
      height: 70.0,
      width: 56.0,
      alignment: FractionalOffset.topCenter,
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Interval(
            0.0,
            1.0,
            curve: Curves.easeInOut,
          ),
        ),
        child: FloatingActionButton(
          child: Icon(icons, color: backgroundColor),
          onPressed: () {},
        ),
      ),
    );
  }
}
