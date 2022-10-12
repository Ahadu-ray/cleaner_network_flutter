import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.onPressed,
    this.inverted = false,
    this.isGradient = true,
    this.isWhite = false,
    this.color,
    this.style,
    this.vPadding = 20,
    this.hPadding = 20,
  }) : super(key: key);
  double? width, height;
  double vPadding, hPadding;
  String title;
  bool inverted, isGradient, isWhite;
  Function()? onPressed;
  Function(String)? onPressed2;
  Color? color;
  TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.93,
        height: height,
        decoration: isWhite
            ? AppTheme.whiteButtonDecoration()
            : inverted
                ? AppTheme.iGradButtonDecoration()
                : isGradient
                    ? AppTheme.gradButtonDecoration()
                    : AppTheme.coloredButtonDecoration().copyWith(color: color),
        padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
        child: CustomText(
          title,
          style: style ??
              AppTheme.butText().copyWith(
                  color: inverted || isWhite ? AppTheme.mainGreen : null,
                  fontWeight: isGradient ? null : FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
