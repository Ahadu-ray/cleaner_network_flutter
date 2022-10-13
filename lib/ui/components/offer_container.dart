import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class OfferContainer extends StatelessWidget {
  OfferContainer({Key? key, this.status}) : super(key: key);
  String? status;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.locationPage, arguments: [status]);
      },
      child: Container(
        decoration: AppTheme.mainCardDecoration(),
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                status != null ? StatusContainer(status: status!) : SizedBox(),
                Row(
                  children: [
                    Image.asset(
                      priceTag,
                      width: 15,
                    ),
                    CustomText(
                      "Price: ",
                      style: AppTheme.titleStyle2(),
                    ),
                    Text("60\$",
                        style: AppTheme.titleStyle2().copyWith(
                          color: AppTheme.mainGreen,
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  singleRowBuilder(context, "Address", placeholder,
                      "Viktoriya Kabachek, Kazakhstan"),
                  singleRowBuilder(context, "Time", clock, "1 Hour"),
                  singleRowBuilder(context, "Distance", distance, "1.00 miles"),
                  Row(
                    children: [
                      singleRowBuilder(context, "Bedroom", bedroom, "2 Bed"),
                      singleRowBuilder(context, "Bathroom", bath, "2 Bath"),
                    ],
                  ),
                  Row(
                    children: [
                      singleRowBuilder(
                          context, "Start time", hourglass, "2/10/2022"),
                      SizedBox(
                        width: 19,
                      ),
                      CustomText("17:30 PM - 18:30 PM",
                          style: AppTheme.normalStyle2().copyWith(
                            color: AppTheme.mainGreen,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            if (status == "Job Accepted")
              Container(
                margin: EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                child: CustomButton(
                  title: "Click here Once Job is completed",
                  isGradient: false,
                  vPadding: 14,
                ),
              )
          ],
        ),
      ),
    );
  }
}
