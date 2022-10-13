import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentOptionConfirm extends StatelessWidget {
  PaymentOptionConfirm({
    Key? key,
    required this.onDone,
    required this.name,
    required this.path,
  }) : super(key: key);
  Function() onDone;
  String name, path;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
            height: 16,
          ),
          Image.asset(
            path,
            width: 175,
          ),
          SizedBox(
            height: 31,
          ),
          CustomText("Are you sure you want to pay via $name?",
              style: AppTheme.normalStyle()),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                title: "No",
                inverted: true,
                width: MediaQuery.of(context).size.width * 0.3,
                vPadding: 16,
                onPressed: () {
                  Get.back();
                },
              ),
              CustomButton(
                title: "Yes",
                width: MediaQuery.of(context).size.width * 0.3,
                vPadding: 16,
                onPressed: onDone,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
