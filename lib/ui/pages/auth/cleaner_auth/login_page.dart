import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/enter_email_dialog.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CleanerLoginPage extends StatefulWidget {
  const CleanerLoginPage({Key? key}) : super(key: key);

  @override
  State<CleanerLoginPage> createState() => _CleanerLoginPageState();
}

class _CleanerLoginPageState extends State<CleanerLoginPage> {
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
                    "Sign in",
                    style: AppTheme.titleStyle(),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  CustomText(
                    "as Cleaner",
                    style: AppTheme.normalStyle(),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Form(
                    child: Column(
                      children: [
                        CustomField(
                            hint: "Email Address",
                            textInputType: TextInputType.emailAddress,
                            rightIcon: IconlyLight.message),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: 'Password',
                          controller: TextEditingController(),
                          isVisible: false,
                          rightIcon: IconlyLight.lock,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberMe,
                                  onChanged: (val) {
                                    setState(() {
                                      if (val != null) {
                                        rememberMe = val;
                                      }
                                    });
                                  },
                                  activeColor: AppTheme.mainGreen,
                                ),
                                CustomText("Remember Me",
                                    style: AppTheme.hintStyle().copyWith(
                                      color: AppTheme.greyL,
                                    ))
                              ],
                            ),
                            InkWell(
                              child: CustomText("Forgot Password",
                                  style: AppTheme.hintStyle().copyWith(
                                    color: AppTheme.mainGreen,
                                  )),
                              onTap: () {
                                Get.bottomSheet(EnterEmailDialog());
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          vPadding: 20,
                          title: "Sign In",
                          onPressed: () {
                            Get.toNamed(Routes.cleanerHomePage);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomText(
                    "or",
                    style: AppTheme.hintStyle().copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        "Don???t have an account yet?",
                        style: AppTheme.normalStyle().copyWith(fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.cleanerSignupPage);
                        },
                        child: CustomText(
                          "Sign Up Now",
                          style: AppTheme.normalStyle().copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.mainGreen,
                              fontSize: 16),
                        ),
                      )
                    ],
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
