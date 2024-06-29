import 'package:flutter/material.dart';

import '../../color/app_color.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onTap;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double radius;
  final double? height;
  final double? width;
  final Color color;
  final Color borderColor;
  final Widget widget;
  final bool splashColor;
  final List<BoxShadow> shadow;

  const ButtonWidget({
    super.key,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.radius = 12,
    this.color = AppColor.gray100,
    required this.widget,
    required this.onTap,
    this.height,
    this.width,
    this.borderColor = Colors.transparent,
    this.splashColor = false,
    this.shadow = const <BoxShadow>[]
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: shadow
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          height: height,
          width: width ?? MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: borderColor,
            )
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              splashColor: splashColor
                  ? Colors.transparent
                  : AppColor.black.withOpacity(0.1),
              highlightColor: Colors.transparent,
              child: Padding(
                padding: padding,
                child: widget,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
