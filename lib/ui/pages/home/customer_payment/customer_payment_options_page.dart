import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_option_confirm_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_summary_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/wallet_card.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerPaymentOptionsPage extends StatefulWidget {
  const CustomerPaymentOptionsPage({Key? key}) : super(key: key);

  @override
  State<CustomerPaymentOptionsPage> createState() =>
      _CustomerPaymentOptionsPageState();
}

class _CustomerPaymentOptionsPageState
    extends State<CustomerPaymentOptionsPage> {
  String selectedType = "Stripe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Payment Options",
          withBg: true,
          hasBack: false,
        ),
        withSpace: 183,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              WalletCard(),
              SizedBox(
                height: 54,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedType = "Stripe";
                        });
                      },
                      child: Container(
                          decoration: AppTheme.fieldDecoration2(),
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: "Stripe",
                                      groupValue: selectedType,
                                      onChanged: (String? value) {}),
                                  CustomText(
                                    "Stripe",
                                    style: AppTheme.normalStyle()
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Image.asset(
                                stripe,
                                width: 41,
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedType = "Cash";
                        });
                      },
                      child: Container(
                          decoration: AppTheme.fieldDecoration2(),
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: "Cash",
                                      groupValue: selectedType,
                                      onChanged: (value) {}),
                                  CustomText(
                                    "Cash",
                                    style: AppTheme.normalStyle()
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Image.asset(
                                cash,
                                width: 41,
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    CustomButton(
                      title: "Proceed",
                      onPressed: () {
                        Get.dialog(PaymentOptionConfirm(
                            onDone: () {
                              Get.back();
                              Get.dialog(PaymentSummaryDialog(onDone: () {
                                Get.toNamed(Routes.cardDetailPage);
                              }));
                            },
                            name: selectedType == "Cash"
                                ? "Cash"
                                : "Card/Debit Card",
                            path: selectedType == "Cash" ? cash : stripe));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
