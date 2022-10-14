import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterEmailDialog extends StatelessWidget {
  const EnterEmailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 30,
                    color: Color.fromRGBO(0, 0, 0, 0.16))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          padding: EdgeInsets.symmetric(vertical: 29, horizontal: 15),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CustomText(
                  "Send your Email",
                  style: AppTheme.titleStyle2().copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 34,
                ),
                CustomField(hint: "Email Address"),
                SizedBox(
                  height: 57,
                ),
                CustomButton(
                  title: "Send",
                  isGradient: false,
                  vPadding: 16,
                  onPressed: () {
                    Get.back();
                    Get.toNamed(Routes.resetPasswordPage);
                  },
                )
              ],
            ),
          )),
    );
  }
}
