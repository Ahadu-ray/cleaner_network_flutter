import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {Key? key,
      required this.hint,
      this.label,
      this.controller,
      this.width,
      this.textInputType = TextInputType.text,
      this.leftIcon,
      this.rightIcon,
      this.onRightIconTap,
      this.isVisible = true,
      this.enabled = true,
      this.leftWidget,
      this.isRectangular = false})
      : super(key: key);
  final TextEditingController? controller;
  final String? label;
  final String hint;
  final TextInputType textInputType;
  final double? width;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Widget? leftWidget;
  final Function()? onRightIconTap;
  final bool isVisible;
  final bool enabled;
  final bool isRectangular;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: CustomText(
              label!,
              style: AppTheme.fieldLabelStyle,
            ),
          ),
        Container(
          width: width ?? MediaQuery.of(context).size.width * 0.93,
          decoration: isRectangular
              ? AppTheme.fieldDecoration3()
              : AppTheme.fieldDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              leftIcon != null
                  ? Icon(
                      leftIcon,
                      color: AppTheme.grey1,
                    )
                  : leftWidget ?? SizedBox(),
              Expanded(
                child: TextFormField(
                  keyboardType: textInputType,
                  obscureText: !isVisible,
                  enabled: enabled,
                  decoration: InputDecoration(
                    contentPadding:
                        leftIcon != null ? EdgeInsets.only(left: 10) : null,
                    hintText: hint,
                    border: InputBorder.none,
                    hintStyle: AppTheme.hintStyle(),
                  ),
                ),
              ),
              rightIcon != null
                  ? IconButton(
                      icon: Icon(
                        rightIcon,
                        color: AppTheme.grey1,
                      ),
                      onPressed: onRightIconTap,
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
