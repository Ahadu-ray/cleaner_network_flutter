import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  GradientButton(
      {Key? key,
      required this.title,
      this.width,
      this.height,
      this.onPressed,
      this.inverted = false,
      this.isGradient = true,
      this.vPadding = 25})
      : super(key: key);
  double? width;
  double? height;
  double vPadding;
  String title;
  bool inverted;
  bool isGradient;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.93,
        height: height,
        decoration: inverted
            ? AppTheme.iGradButtonDecoration()
            : isGradient
                ? AppTheme.gradButtonDecoration()
                : AppTheme.coloredButtonDecoration(),
        padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: 20),
        child: CustomText(
          title,
          style: AppTheme.butText().copyWith(
              color: inverted ? AppTheme.mainGreen : null,
              fontWeight: isGradient ? null : FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
