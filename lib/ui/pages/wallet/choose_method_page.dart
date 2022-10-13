import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_actions.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_option_confirm_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_summary_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseMethodPage extends StatefulWidget {
  ChooseMethodPage({Key? key}) : super(key: key);

  @override
  State<ChooseMethodPage> createState() => _ChooseMethodPageState();
}

class _ChooseMethodPageState extends State<ChooseMethodPage> {
  String selectedType = "Stripe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
          appBar: CustomAppBar(
            title: "Add Money In Wallet",
            action: AppbarActions(),
          ),
          withSpace: 138,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 40),
                      child: CustomText(
                        "Total Amount to be paid",
                        style: AppTheme.normalStyle().copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Text("\$55",
                          style: AppTheme.calendarCardSelectedTitle().copyWith(
                              fontSize: 34, fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 49,
                    ),
                    CustomText(
                      "Select an option to pay",
                      style: AppTheme.normalStyle(),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        decoration: AppTheme.fieldDecoration2(),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: "Stripe",
                                    groupValue: selectedType,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          selectedType = value;
                                        });
                                      }
                                    }),
                                CustomText(
                                  "Stripe",
                                  style: AppTheme.normalStyle()
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Image.asset(stripe)
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        decoration: AppTheme.fieldDecoration2(),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: "Cash",
                                    groupValue: selectedType,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedType = value.toString();
                                      });
                                    }),
                                CustomText(
                                  "Cash",
                                  style: AppTheme.normalStyle()
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Image.asset(cash)
                          ],
                        )),
                    SizedBox(
                      height: 48,
                    ),
                    CustomButton(
                      title: "Proceed",
                      vPadding: 20,
                      onPressed: () {
                        Get.dialog(PaymentSummaryDialog(onDone: () {
                          Get.toNamed(Routes.cardDetailPage);
                        }));
                      },
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
