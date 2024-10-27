import 'package:flutter/material.dart';

import '../../color/app_color.dart';

class ButtonWidget extends StatefulWidget {
  final Function() onPressed;
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
  final ButtonStyle? buttonStyle;

  const ButtonWidget({
    super.key,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.radius = 12,
    this.color = AppColor.gray100,
    required this.widget,
    required this.onPressed,
    this.height,
    this.width,
    this.borderColor = Colors.transparent,
    this.splashColor = false,
    this.shadow = const <BoxShadow>[],
    this.buttonStyle,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  static const double _shadowHeight = 4;
  double _position = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: BoxDecoration(
        boxShadow: widget.shadow
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: widget.bu
        child: widget.widget,
      ),
    );
  }
}
