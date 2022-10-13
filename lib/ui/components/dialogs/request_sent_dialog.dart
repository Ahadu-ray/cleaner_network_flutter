import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/job_id_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestSent extends StatelessWidget {
  RequestSent({Key? key, required this.onDone}) : super(key: key);
  Function() onDone;
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
              JobIdContainer(id: 1864),
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
            height: 19,
          ),
          CustomText(
            "We have sent your request to all our available cleaners in your area.\n\nWhen cleaners confirm they are available they will appear above.\n\nYou can then choose amongst the available cleaners which one you prefer based on price, distance or reviews.\n\nCleaner response times may vary as they may currently be at a job and will not be able to respond until that job is complete.",
            style: AppTheme.normalStyle(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    onDone();
                  },
                  child: Text(
                    "OK",
                    style: AppTheme.normalStyle4()
                        .copyWith(color: AppTheme.mainGreen, fontSize: 16),
                  ))
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
