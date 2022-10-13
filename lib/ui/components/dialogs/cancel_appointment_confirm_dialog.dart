import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/job_id_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelAppointmentConfirmDialog extends StatelessWidget {
  CancelAppointmentConfirmDialog({Key? key, required this.onDone})
      : super(key: key);
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
              SizedBox(
                width: 10,
              ),
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
            height: 41,
          ),
          Image.asset(
            cancelAppointment,
            width: 150,
          ),
          CustomText(
            "Are you sure you want to cancel this appointment ?",
            style: AppTheme.normalStyle(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "No",
                    style: AppTheme.normalStyle4()
                        .copyWith(color: AppTheme.red, fontSize: 16),
                  )),
              Container(
                height: 20,
                width: 2,
                color: AppTheme.grey11,
              ),
              TextButton(
                  onPressed: () {
                    onDone();
                  },
                  child: Text(
                    "Yes",
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
