import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CircledIconButton extends StatelessWidget {
  const CircledIconButton({Key? key, required this.iconData, this.onPressed})
      : super(key: key);
  final Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppTheme.mainGreen,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: Icon(iconData, color: Colors.white),
    );
  }
}
