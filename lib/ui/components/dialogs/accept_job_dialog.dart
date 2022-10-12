import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcceptJobDialog extends StatelessWidget {
  AcceptJobDialog({Key? key, required this.onDone}) : super(key: key);
  Function() onDone;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        height: 286,
        width: 281,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
            Image.asset(
              cleaner,
              width: 114,
            ),
            CustomText("Accept This Job Now", style: AppTheme.normalStyle()),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  title: "No",
                  inverted: true,
                  width: MediaQuery.of(context).size.width * 0.3,
                  vPadding: 16,
                ),
                CustomButton(
                  title: "Yes",
                  width: MediaQuery.of(context).size.width * 0.3,
                  vPadding: 16,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
