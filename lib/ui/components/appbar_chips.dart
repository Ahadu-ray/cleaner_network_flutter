import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AppBarChips extends StatelessWidget {
  AppBarChips({
    Key? key,
    required this.tabs,
    required this.onChange,
    this.selected = 0,
  })  : assert(tabs.length == 2),
        super(key: key);
  List<String> tabs;
  List<Function()?> onChange;
  int selected;

  @override
  build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.38,
            decoration: selected == 0
                ? BoxDecoration(
                    color: AppTheme.mainGreen,
                    borderRadius: BorderRadius.circular(10),
                  )
                : null,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: CustomText(
              tabs[0],
              textAlign: TextAlign.center,
              style: AppTheme.butText().copyWith(
                  color: selected != 0 ? AppTheme.black : null,
                  fontWeight:
                      selected != 0 ? FontWeight.normal : FontWeight.w600),
            ),
          ),
          onTap: () {
            onChange.isNotEmpty ? onChange[0]!() : null;
          },
        ),
        InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.38,
              decoration: selected == 1
                  ? BoxDecoration(
                      color: AppTheme.mainGreen,
                      borderRadius: BorderRadius.circular(10),
                    )
                  : null,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: CustomText(
                tabs[1],
                textAlign: TextAlign.center,
                style: AppTheme.butText().copyWith(
                    color: selected != 1 ? AppTheme.black : null,
                    fontWeight:
                        selected != 1 ? FontWeight.normal : FontWeight.w600),
              ),
            ),
            onTap: () {
              onChange.isNotEmpty ? onChange[1]!() : null;
            }),
      ]),
    );
  }
}
