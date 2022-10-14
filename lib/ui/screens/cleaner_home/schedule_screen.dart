import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_actions.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_chips.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/offer_container.dart';
import 'package:cleaner_network_flutter/ui/components/online_switch.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/selectable_dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CleanerScheduleScreen extends StatefulWidget {
  CleanerScheduleScreen({Key? key}) : super(key: key);

  @override
  State<CleanerScheduleScreen> createState() => _CleanerScheduleScreenState();
}

class _CleanerScheduleScreenState extends State<CleanerScheduleScreen> {
  List<String> tabs = ["Schedule", "Completed"];

  String selectedTab = "Schedule";
  int selected = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ScreenWithAppBar(
      appBar: CustomAppBar(
        title: selectedTab,
        withBg: true,
        hasBack: false,
        action: AppbarActions(),
        extra: AppBarChips(
          tabs: tabs,
          selected: selected,
          onChange: [
            () {
              _changePage(0);
            },
            () {
              _changePage(1);
            }
          ],
        ),
      ),
      child: Column(
        children: [
          OnlineSwitch(),
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: (v) {
                setState(() {
                  selected = v;
                });
              },
              children: [
                Column(
                  children: [
                    SelectableDates(onSelect: () {}),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return OfferContainer(
                            status: "Job Accepted",
                          );
                        },
                        itemCount: 3,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SelectableDates(onSelect: () {}),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return OfferContainer(
                            status: "Job Completed",
                          );
                        },
                        itemCount: 3,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _changePage(int index) {
    setState(() {
      selected = index;
    });
    pageController.jumpToPage(
      index,
    );
  }
}
