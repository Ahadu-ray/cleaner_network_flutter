import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CleanerListItem extends StatelessWidget {
  const CleanerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.mainCardDecoration2(),
      margin: EdgeInsets.only(bottom: 23, left: 23, right: 23),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      profile,
                      width: 42,
                      height: 42,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Stacy Hiking",
                    style: AppTheme.titleStyle2(),
                  )
                ],
              ),
              CustomButton(
                title: "Select Cleaner",
                width: 80,
                vPadding: 10,
                hPadding: 8,
                isGradient: false,
                style: AppTheme.butText().copyWith(fontSize: 8.6),
              ),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          jobRequestRowBuilder(context, IconlyLight.send, "Distance", "12km"),
          jobRequestRowBuilder(
              context, IconlyLight.send, "Price/Hour", "\$ 20"),
          jobRequestRowBuilder(
              context, IconlyLight.send, "Last Active", "2022/10/01"),
          jobRequestRowBuilder(context, IconlyLight.send, "About Me",
              "Childcare Qualifications"),
          InkWell(
              child: jobRequestRowBuilder(
                  context, IconlyLight.send, "Review", "Read Reviews",
                  color: AppTheme.mainGreen)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    happyFace,
                    width: 18,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        "Positive",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.blue,
                        ),
                      ),
                      Text(
                        "12",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.blue,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    normalFace,
                    width: 18,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        "Neutral",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.yellow,
                        ),
                      ),
                      Text(
                        "09",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.yellow,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    sadFace,
                    width: 18,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        "Negative",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.red,
                        ),
                      ),
                      Text(
                        "12",
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.red,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
