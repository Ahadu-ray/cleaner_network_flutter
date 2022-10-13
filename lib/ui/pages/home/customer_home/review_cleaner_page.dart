import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/customer/cleaner_review.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewCleanerPage extends StatelessWidget {
  const ReviewCleanerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Review",
        ),
        withSpace: 120,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              margin: EdgeInsets.all(23),
              decoration: AppTheme.mainCardDecoration2(),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(children: [
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
                  height: 20,
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
                              "06",
                              style: AppTheme.normalStyle().copyWith(
                                color: AppTheme.red,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 31,
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                CleanerReview(status: "Positive"),
                CleanerReview(status: "Neutral"),
                CleanerReview(status: "Negative"),
                SizedBox(
                  height: 30,
                ),
                CustomButton(title: "Read More")
              ])),
        ),
      ),
    );
  }
}
