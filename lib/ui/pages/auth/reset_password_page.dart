import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(children: [
          Positioned(top: 0, right: 0, child: Image.asset(twoCircleBg)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(logoName),
                  SizedBox(
                    height: 50,
                  ),
                  CustomText(
                    "Reset Password",
                    style: AppTheme.titleStyle(),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Form(
                    child: Column(
                      children: [
                        CustomField(
                            hint: "0000",
                            label: "OTP*",
                            textInputType: TextInputType.emailAddress,
                            rightIcon: IconlyLight.message),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: 'Password',
                          label: "New Password",
                          controller: TextEditingController(),
                          isVisible: false,
                          rightIcon: IconlyLight.lock,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: 'Password',
                          label: "Confirm New Password",
                          controller: TextEditingController(),
                          isVisible: false,
                          rightIcon: IconlyLight.lock,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          vPadding: 20,
                          title: "Reset",
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
