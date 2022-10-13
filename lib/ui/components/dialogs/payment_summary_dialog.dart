import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSummaryDialog extends StatelessWidget {
  PaymentSummaryDialog({Key? key, required this.onDone}) : super(key: key);
  Function() onDone;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                "Payment Summary",
                style: AppTheme.titleStyle2().copyWith(fontSize: 16),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 42,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText("Cleaning Amount", style: AppTheme.normalStyle()),
              Text("\$20", style: AppTheme.normalStyle())
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText("Stripe fees", style: AppTheme.normalStyle()),
              Text("\$0.234", style: AppTheme.normalStyle())
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText("Total Amount", style: AppTheme.normalStyle4()),
              Text("\$20.234", style: AppTheme.normalStyle4())
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
            "An Additional administration fee will be charged only when ,making the payment vuia credit/debit card. Alternatively you can pay by cash with no administration fee",
            style: AppTheme.hintStyle(),
          ),
          SizedBox(
            height: 28,
          ),
          CustomButton(
            title: "Proceed to pay",
            onPressed: onDone,
            vPadding: 19,
          ),
          SizedBox(
            height: 15,
          ),
          CustomButton(
            title: "Cancel",
            onPressed: onDone,
            inverted: true,
            vPadding: 19,
          )
        ],
      ),
    );
  }
}
