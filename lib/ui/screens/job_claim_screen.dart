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

class JobClaimScreen extends StatefulWidget {
  JobClaimScreen({Key? key}) : super(key: key);

  @override
  State<JobClaimScreen> createState() => _JobClaimScreenState();
}

class _JobClaimScreenState extends State<JobClaimScreen> {
  List<String> tabs = ["Job Requests", "Schedule"];

  String selectedTab = "Job Requests";

  @override
  Widget build(BuildContext context) {
    return ScreenWithAppBar(
      appBar: CustomAppBar(
        title: "Claim",
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
                  status: selectedTab == tabs[0] ? null : "Job Accepted",
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
