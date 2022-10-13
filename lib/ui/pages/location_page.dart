import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/cleaner_detail.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/map/custom_map.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/accept_job_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/offer_container.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/bottom_draggable.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class LocationPage extends StatelessWidget {
  LocationPage({Key? key}) : super(key: key);
  String? status = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        withSpace: 0,
        appBar: CustomAppBar(
          title: "Location",
        ),
        child: Stack(
          children: [
            //replace with google map widget
            CustomMap(),
            BottomDraggable(initialChildSize: 0.4, minChildSize: 0.3, slivers: [
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29.0),
                child: Column(
                  children: [
                    status == "Job Completed"
                        ? Container(
                            width: 139,
                            margin: EdgeInsets.only(top: 20),
                            child: StatusContainer(
                              status: "Copmleted",
                              gap: 16.5,
                            ))
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                    SizedBox(
                      height: 30,
                    ),
                    CleanerDetail(),
                    if (status == null)
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 33),
                          child: CustomButton(
                            vPadding: 20,
                            title: "Accept Job",
                            onPressed: () {
                              Get.dialog(AcceptJobDialog(onDone: () {}));
                            },
                          ))
                  ],
                ),
              )),
            ])
          ],
        ),
      ),
    );
  }
}
