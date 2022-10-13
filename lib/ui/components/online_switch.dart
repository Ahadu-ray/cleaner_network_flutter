import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/controllers/cleaner_controller.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnlineSwitch extends StatelessWidget {
  OnlineSwitch({Key? key}) : super(key: key);

  CleanerController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Obx(() {
        return Container(
          height: 13,
          child: CupertinoSwitch(
            value: controller.isOnline.value,
            activeColor: AppTheme.mainGreen,
            onChanged: (val) {
              controller.toggleOnline();
            },
          ),
        );
      }),
      CustomText("Online",
          style: AppTheme.normalStyle().copyWith(
              color: AppTheme.mainGreen, fontWeight: FontWeight.bold)),
      SizedBox(
        width: 20,
      )
    ]);
  }
}
