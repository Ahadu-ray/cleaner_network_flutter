import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key? key,
    required this.title,
    required this.content,
    this.actionText = 'done',
    this.cancelText = 'cancel',
    this.actionCallback,
    this.contentTextAlign = TextAlign.center,
    this.secondAction,
    this.secondActionCallback,
  }) : super(key: key);

  final String title;
  final String content;
  final String actionText;
  final String cancelText;
  final VoidCallback? actionCallback;
  final TextAlign contentTextAlign;

  final VoidCallback? secondActionCallback;
  final String? secondAction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // insetPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTheme.titleStyle(),
      ),
      content: Text(
        content,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 14.0,
          letterSpacing: 1.2,
        ),
      ),
      actions: [
        TextButton(
          child: CustomText(cancelText, style: AppTheme.titleStyle3()),
          onPressed: () {
            Get.back();
          },
        ),
        if (actionCallback != null)
          TextButton(
            child: CustomText(actionText, style: AppTheme.titleStyle3()),
            onPressed: () {
              Get.back();
              actionCallback!();
            },
          ),
        if (secondAction != null)
          TextButton(
            child: CustomText(secondAction!, style: AppTheme.titleStyle3()),
            onPressed: () {
              Get.back();
              if (secondActionCallback != null) secondActionCallback!();
            },
          ),
      ],
    );
  }
}
