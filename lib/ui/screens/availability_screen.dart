import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/custom_calendar.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/add_available_time_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/online_switch.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/bottom_draggable.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:table_calendar/table_calendar.dart';

class AvailabilityScreen extends StatelessWidget {
  const AvailabilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWithAppBar(
      appBar: CustomAppBar(
        title: "Available Time",
        withBg: true,
        hasBack: false,
      ),
      withSpace: 138,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                OnlineSwitch(),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: CustomText(
                    "Please Select the days you are not available.",
                    style: AppTheme.titleStyle2().copyWith(
                        color: AppTheme.mainGreen, fontWeight: FontWeight.w400),
                  ),
                ),
                CustomCalendar()
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: AppTheme.availTimeCardDecoration(),
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 15, left: 18, right: 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ovalGreen,
                                    width: 9.79,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("2/09/2022",
                                      style: AppTheme.normalStyle3())
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Get.bottomSheet(AddAvailableTimeDialog());
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      IconlyBold.edit,
                                      color: AppTheme.mainGreen,
                                    ),
                                    CustomText("Edit",
                                        style: AppTheme.normalStyle3().copyWith(
                                          color: AppTheme.mainGreen,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      ovalRed,
                                      width: 3.75,
                                    ),
                                    SizedBox(
                                      width: 9.25,
                                    ),
                                    Text(
                                      "00:00 - 01:00",
                                      style: AppTheme.normalStyle3(),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      ovalRed,
                                      width: 3.75,
                                    ),
                                    SizedBox(
                                      width: 9.25,
                                    ),
                                    Text(
                                      "00:00 - 01:00",
                                      style: AppTheme.normalStyle3(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })))
        ],
      ),
    );
  }
}
