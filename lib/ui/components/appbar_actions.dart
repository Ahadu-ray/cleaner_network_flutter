import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class AppbarActions extends StatelessWidget {
  AppbarActions({Key? key, this.type = "Cleaner"}) : super(key: key);
//replace this with enum
  String type;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 30,
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: InkWell(
                  child: Row(children: [
                    Icon(
                      IconlyBold.profile,
                      color: AppTheme.mainGreen,
                    ),
                    SizedBox(width: 10),
                    CustomText(
                      "Profile",
                      style: AppTheme.butText().copyWith(color: Colors.black),
                    ),
                  ]),
                  onTap: () {
                    Get.toNamed(type == "Cleaner"
                        ? Routes.cleanerProfilePage
                        : Routes.customerProfilePage);
                  },
                ),
              )),
              PopupMenuItem(
                  child: InkWell(
                child: Row(children: [
                  Icon(
                    IconlyBold.setting,
                    color: AppTheme.mainGreen,
                  ),
                  SizedBox(width: 10),
                  CustomText(
                    "Select Language",
                    style: AppTheme.butText().copyWith(color: Colors.black),
                  ),
                ]),
                onTap: () {
                  Get.toNamed(Routes.selectLanguagePage);
                },
              )),
              PopupMenuItem(
                  child: InkWell(
                child: Row(children: [
                  Icon(
                    Icons.help,
                    color: AppTheme.mainGreen,
                  ),
                  SizedBox(width: 10),
                  CustomText(
                    "Help",
                    style: AppTheme.butText().copyWith(color: Colors.black),
                  ),
                ]),
                onTap: () {
                  Get.toNamed(Routes.helpPage);
                },
              )),
            ]);
  }
}
