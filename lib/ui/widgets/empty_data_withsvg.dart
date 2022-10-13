import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';

class EmptyDataWithSvg extends StatelessWidget {
  EmptyDataWithSvg({Key? key, this.title, required this.desc})
      : super(key: key);

  String? title;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.noDataCardDecoration(),
      margin: EdgeInsets.symmetric(horizontal: 23),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 45),
      child: Column(
        children: [
          if (title != null)
            CustomText(
              title!,
              style:
                  AppTheme.normalStyle().copyWith(fontWeight: FontWeight.w600),
            ),
          SizedBox(
            height: 71,
          ),
          Image.asset(
            empty,
            width: 114,
            height: 150,
          ),
          SizedBox(
            height: 40,
          ),
          CustomText(
            desc,
            style: AppTheme.normalStyle().copyWith(
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
