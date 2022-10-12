import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProceedPaymentDialog extends StatelessWidget {
  ProceedPaymentDialog({Key? key, required this.onDone}) : super(key: key);
  Function() onDone;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        height: 500,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            CustomText(
              "We have sent your request to all our available cleaners in your area.\n\n When cleaners confirm they are available they will appear above.\n\nYou can then choose amongst the available cleaners which one you prefer based on price, distance or reviews.\n\n Cleaner response times may vary as they may currently be at a job and will not be able to respond until that job is complete.",
              style: AppTheme.hintStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: "ok",
              onPressed: onDone,
            )
          ],
        ),
      ),
    );
  }
}
