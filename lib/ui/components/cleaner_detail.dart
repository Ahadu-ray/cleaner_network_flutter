import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CleanerDetail extends StatelessWidget {
  const CleanerDetail({Key? key}) : super(key: key);
//must accept cleaner model
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            singleRowBuilder(context, "Customer Name", user, "John Wick"),
            SizedBox(
              height: 4,
            ),
            singleRowBuilder(context, "Address", placeholder,
                "Viktoriya Kabachek, Kazakhstan"),
            SizedBox(
              height: 4,
            ),
            singleRowBuilder(context, "Time", clock, "1 Hour"),
            SizedBox(
              height: 4,
            ),
            singleRowBuilder(context, "Distance", distance, "1.00 miles"),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                singleRowBuilder(context, "Bedroom", bedroom, "2 Bed"),
                singleRowBuilder(context, "Bathroom", bath, "2 Bath"),
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          top: 17,
        ),
        width: 210,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.mainGreen.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(hourglass),
                CustomText(
                  "Start Time",
                  style: AppTheme.titleStyle2(),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  IconlyLight.paper,
                  color: AppTheme.mainGreen,
                ),
                Text("2/10/2022",
                    style: AppTheme.titleStyle2()
                        .copyWith(color: AppTheme.mainGreen, fontSize: 10)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  IconlyLight.time_circle,
                  color: AppTheme.mainGreen,
                ),
                Text("17:30 PM  -  18:30 PM",
                    style: AppTheme.titleStyle2().copyWith(
                      color: AppTheme.mainGreen,
                    )),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
