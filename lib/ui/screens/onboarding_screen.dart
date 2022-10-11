import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen(
      {Key? key, required this.image, required this.title, required this.sub})
      : super(key: key);
  String image, title, sub;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        image,
        height: 246,
        fit: BoxFit.fitWidth,
      ),
      SizedBox(
        height: 54,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            children: [
              CustomText(
                title,
                style: AppTheme.titleStyle().copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              // SizedBox(
              //   height: 16,
              // ),
              // CustomText(
              //   sub,
              //   style: AppTheme.normalStyle3(),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ))
    ]);
  }
}
