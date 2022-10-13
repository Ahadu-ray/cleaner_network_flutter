import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {Key? key,
      required this.title,
      this.hasBack = true,
      this.withBg = false,
      this.action,
      this.height,
      this.extra})
      : super(key: key);
  String title;
  bool hasBack;
  bool withBg;
  Widget? extra;
  Widget? action;
  double? height;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height ?? (extra != null ? 200 : 118),
        decoration: BoxDecoration(
            gradient: AppTheme.appGrad(),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(twoCircleBg), alignment: Alignment.topRight),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(0, 8),
                  blurRadius: 22)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                hasBack
                    ? IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    : SizedBox(
                        width: 30,
                      ),
                CustomText(title, style: AppTheme.butText()),
                action ??
                    SizedBox(
                      width: 30,
                    ),
              ],
            ),
            SizedBox(
              height: extra != null ? 10 : 20,
            ),
            extra ?? SizedBox()
          ],
        ),
      ),
    );
  }
}
