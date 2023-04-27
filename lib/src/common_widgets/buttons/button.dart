import 'package:flutter/material.dart';
import 'package:kolkata_machine_task/src/common_widgets/container/container.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';

class JButton extends StatelessWidget {
  const JButton({
    Key? key,
    required this.onPress,
    required this.text,
    this.padding,
    this.backgroundColor,
    this.overlayColor,
    this.borderRadius = 30,
    this.prefixIcon,
    this.suffixIcon,
    this.width,
    this.height,
    this.elevation = 1,
  }) : super(key: key);

  final Function()? onPress;
  final String text;
  final Color? backgroundColor;
  final Color? overlayColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return JContainer(
      width: width,
      height: height ?? 30,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation),
          backgroundColor:
              MaterialStateProperty.all(backgroundColor ?? AppColor.primary),
          padding: MaterialStateProperty.all(padding),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPress,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            prefixIcon ?? const SizedBox(),
            if (prefixIcon != null) JSpace.horizontal(10),
            JText(
              textAlign: TextAlign.center,
              text: text,
              fontSize: 13,
              color: overlayColor,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon ?? const SizedBox(),
            if (suffixIcon != null) JSpace.horizontal(10),
          ],
        ),
      ),
    );
  }
}
