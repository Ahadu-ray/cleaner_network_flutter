import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class LoginCPage extends StatefulWidget {
  const LoginCPage({Key? key}) : super(key: key);

  @override
  State<LoginCPage> createState() => _LoginCPageState();
}

class _LoginCPageState extends State<LoginCPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                height: 51,
              ),
              CustomText(
                "Sign in",
                style: AppTheme.titleStyle(),
              ),
              SizedBox(
                height: 42,
              ),
              Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppTheme.grey9,
                  borderRadius: BorderRadius.circular(14),
                ),
                margin: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          decoration: selected == 0
                              ? BoxDecoration(
                                  gradient: AppTheme.buttonGrad(),
                                  borderRadius: BorderRadius.circular(10),
                                )
                              : null,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: CustomText(
                            "Guest",
                            textAlign: TextAlign.center,
                            style: AppTheme.butTextC().copyWith(
                                color: selected != 0 ? AppTheme.black : null,
                                fontWeight: selected != 0
                                    ? FontWeight.normal
                                    : FontWeight.w600),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selected = 0;
                          });
                        },
                      ),
                      InkWell(
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: selected == 1
                                  ? BoxDecoration(
                                      color: AppTheme.mainGreen,
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                  : null,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              child: CustomText(
                                "Customer",
                                textAlign: TextAlign.center,
                                style: AppTheme.butTextC().copyWith(
                                    color:
                                        selected != 1 ? AppTheme.black : null,
                                    fontWeight: selected != 1
                                        ? FontWeight.normal
                                        : FontWeight.w600),
                              ))),
                    ]),
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
                            Checkbox(value: false, onChanged: (val) {}),
                            CustomText("Remember Me",
                                style: AppTheme.hintStyle().copyWith(
                                  color: AppTheme.greyL,
                                ))
                          ],
                        ),
                        CustomText("Forgot Password",
                            style: AppTheme.hintStyle().copyWith(
                              color: AppTheme.mainGreen,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      vPadding: 20,
                      title: "Sign In",
                      onPressed: () {
                        Get.toNamed(Routes.homePageC);
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
                    "Don’t have an account yet?",
                    style: AppTheme.normalStyle().copyWith(fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.signupPage);
                    },
                    child: CustomText(
                      "Sign Up",
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
    ]));
  }
}
