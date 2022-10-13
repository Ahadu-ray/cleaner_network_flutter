import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/profile_pic_setter.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomerProfilePage extends StatelessWidget {
  const CustomerProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Manage Profile",
          extra: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: ProfilePicSetter(),
          ),
          height: 230,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 36),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CustomField(
                hint: "Hassan",
                label: "First Name",
              ),
              SizedBox(
                height: 20,
              ),
              CustomField(
                hint: "Ahmed",
                label: "Last Name",
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 20,
              ),
              CustomField(
                hint: "+353 456 678",
                label: "Mobile Number",
              ),
              SizedBox(
                height: 20,
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
              CustomDropdown(title: "Select City", choices: ["Aktau"]),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                title: "Update Profile",
                isGradient: false,
                vPadding: 20,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
