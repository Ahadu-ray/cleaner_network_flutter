import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/profile_pic_setter.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CleanerSignUpPage extends StatelessWidget {
  const CleanerSignUpPage({Key? key}) : super(key: key);

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
                    height: 54,
                  ),
                  Image.asset(logoName),
                  SizedBox(
                    height: 51,
                  ),
                  CustomText(
                    "Registration",
                    style: AppTheme.titleStyle(),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  CustomText(
                    "Please complete the registeration form below. This only needs to be completed the first time you use App",
                    style: AppTheme.normalStyle(),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Form(
                    child: Column(
                      children: [
                        ProfilePicSetter(),
                        SizedBox(
                          height: 30,
                        ),
                        CustomField(hint: "First Name"),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(hint: "Last Name"),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(hint: "Date of Birth"),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: "Email Address",
                          textInputType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: 'Password',
                          controller: TextEditingController(),
                          isVisible: false,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        CustomField(
                          hint: 'Confirm Password',
                          controller: TextEditingController(),
                          isVisible: false,
                        ),
                        SizedBox(
                          height: 31,
                        ),
                        Row(
                          children: [
                            CustomField(
                              leftWidget: Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Flag.fromCode(
                                  FlagsCode.IE,
                                  width: 20,
                                  height: 14,
                                ),
                              ),
                              width: 92,
                              hint: "+313",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomField(
                              hint: "Mobile No.",
                              textInputType: TextInputType.phone,
                              width: MediaQuery.of(context).size.width - 162,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(
                            title: "Billing Address",
                            choices: ["Viktoriya Kabachek, Kazakhstan"]),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              IconlyBold.location,
                              color: AppTheme.mainGreen,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              "Select Current Location",
                              style: AppTheme.normalStyle3().copyWith(
                                color: AppTheme.mainGreen,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(
                            title: "Select City", choices: ["Aktau"]),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(title: "About Me", choices: [
                          "Childcare Qualifications",
                          "Special Needs Experience"
                        ]),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(title: "Select Currency", choices: [
                          "Euro",
                        ]),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(
                            title: "Price Per Hour", choices: ["10"]),
                        SizedBox(
                          height: 24,
                        ),
                        CustomDropdown(
                            title: "Select Range", choices: ["1 Miles"]),
                        SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          title: "Register",
                          vPadding: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        "Already have an account? Now",
                        style: AppTheme.normalStyle().copyWith(fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.cleanerLoginPage);
                        },
                        child: CustomText(
                          "Sign In",
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
