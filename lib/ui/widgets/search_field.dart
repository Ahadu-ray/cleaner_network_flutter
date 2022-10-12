import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key, this.onFilter}) : super(key: key);
  Function()? onFilter;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              SizedBox(
                width: 6,
              ),
              Icon(IconlyLight.search),
              SizedBox(
                width: 26,
              ),
              CustomText(
                "Search Filter",
                style: AppTheme.butText().copyWith(color: AppTheme.grey11),
              )
            ],
          ),
          InkWell(
            onTap: onFilter,
            child: Container(
              height: 48,
              width: 49,
              decoration: AppTheme.coloredButtonDecoration(),
              padding: EdgeInsets.all(13),
              child: Center(
                child: Icon(
                  IconlyBroken.filter,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]));
  }
}
