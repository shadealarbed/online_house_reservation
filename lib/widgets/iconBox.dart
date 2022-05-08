import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';

class IconBox extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color? bgColor;
  final double radius;
  final GestureTapCallback? onTap;
  VoidCallback? onPreess;

  IconBox(
      {required this.child,
      this.borderColor = Colors.transparent,
      this.bgColor,
      this.radius = 50,
      this.onTap,
      this.onPreess});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: themes.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
