import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/map/small_map_view.dart';
import 'package:cleaner_network_flutter/ui/components/profile_pic_setter.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CleanerProfilePage extends StatelessWidget {
  const CleanerProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Manage Profile",
          extra: ProfilePicSetter(),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 36),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomButton(
                title: "Read Review",
                vPadding: 16,
                width: 141,
                onPressed: () {
                  Get.toNamed(Routes.reviewCleanerPage);
                },
              ),
              SizedBox(
                height: 44,
              ),
              CustomField(
                hint: "Hassan",
                label: "First Name",
              ),
              CustomField(
                hint: "Ahmed",
                label: "Last Name",
              ),
              CustomField(
                label: "Select Date of Birth",
                hint: "29/Jan/1998",
                rightIcon: IconlyLight.calendar,
                onRightIconTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate:
                          DateTime.now().subtract(Duration(days: 40 * 365)),
                      lastDate: DateTime.now());
                },
              ),
              CustomField(
                hint: "faizansalman222@gmail.com",
                label: "Email Address",
              ),
              CustomField(
                hint: "+353 456 678",
                label: "Mobile Number",
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 37,
              ),
              CustomField(
                  label: "Billing Address",
                  hint: "Viktoriya Kabachek, Kazakhstan",
                  rightIconColor: Colors.black,
                  rightIcon: IconlyBold.location),
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
              CustomDropdown(title: "Select Currency", choices: [
                "Euro",
              ]),
              SizedBox(
                height: 24,
              ),
              CustomField(
                hint: "2 miles",
                rightIconColor: Colors.black,
                rightIcon: IconlyBold.location,
              ),
              SmallMapView(),
              SizedBox(
                height: 52,
              ),
              CustomButton(
                title: "Update Profile",
                isGradient: false,
                vPadding: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
