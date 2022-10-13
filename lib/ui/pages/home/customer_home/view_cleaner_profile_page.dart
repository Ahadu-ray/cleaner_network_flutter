import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ViewCleanerProfilePage extends StatelessWidget {
  const ViewCleanerProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Cleaner Profile",
        ),
        withSpace: 120,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.all(23),
            decoration: AppTheme.mainCardDecoration2(),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 41,
                      child: Image.asset(
                        profile,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: AppTheme.coloredButtonDecoration(),
                          height: 12,
                          width: 12,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Stacy Hiking",
                  style: AppTheme.normalStyle4(),
                ),
                SizedBox(
                  height: 37,
                ),
                jobRequestRowBuilder(
                    context, IconlyLight.send, "Distance", "12km"),
                jobRequestRowBuilder(
                    context, IconlyLight.send, "Price/Hour", "\$ 20"),
                jobRequestRowBuilder(
                    context, IconlyLight.send, "Last Active", "2022/10/01"),
                SizedBox(
                  height: 14,
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                jobRequestRowBuilder(
                    context, IconlyLight.send, "Review", "Read Reviews",
                    color: AppTheme.mainGreen, onRight: () {
                  Get.toNamed(Routes.reviewCleanerPage);
                }),
                SizedBox(
                  height: 19,
                ),
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
                        CustomText(
                          "Positive",
                          style: AppTheme.normalStyle().copyWith(
                            color: AppTheme.blue,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "12",
                      style: AppTheme.normalStyle().copyWith(
                        color: AppTheme.blue,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          normalFace,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        CustomText(
                          "Neutral",
                          style: AppTheme.normalStyle().copyWith(
                            color: AppTheme.blue,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "9",
                      style: AppTheme.normalStyle().copyWith(
                        color: AppTheme.blue,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          sadFace,
                          width: 18,
                        ),
                        SizedBox(width: 10),
                        CustomText(
                          "Negative",
                          style: AppTheme.normalStyle().copyWith(
                            color: AppTheme.blue,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "06",
                      style: AppTheme.normalStyle().copyWith(
                        color: AppTheme.blue,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 24,
                ),
                jobRequestRowBuilder(context, IconlyLight.paper, "About Me",
                    "Childcare Qualifications"),
                SizedBox(
                  height: 43,
                ),
                CustomButton(
                  title: "Next",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
