import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_chips.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/offer_container.dart';
import 'package:cleaner_network_flutter/ui/components/online_switch.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/selectable_dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<String> tabs = ["Schedule", "Completed"];

  String selectedTab = "Schedule";

  @override
  Widget build(BuildContext context) {
    return ScreenWithAppBar(
      appBar: CustomAppBar(
        title: selectedTab,
        withBg: true,
        hasBack: false,
        extra: AppBarChips(
          tabs: tabs,
          onChange: [
            () {
              setState(() {
                selectedTab = tabs[0];
              });
            },
            () {
              setState(() {
                selectedTab = tabs[1];
              });
            }
          ],
        ),
      ),
      child: Column(
        children: [
          OnlineSwitch(),
          SelectableDates(onSelect: () {}),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return OfferContainer(
                  status:
                      selectedTab == tabs[0] ? "Job Accepted" : "Job Completed",
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
