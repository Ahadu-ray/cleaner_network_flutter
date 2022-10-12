import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/job_id_container.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class JobRequestContainer extends StatelessWidget {
  JobRequestContainer({Key? key, this.pStatus, this.type}) : super(key: key);
  //convert to real models when integrating
  String? type, pStatus;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          decoration: AppTheme.mainCardDecoration2(),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          margin: EdgeInsets.only(bottom: 23),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: JobIdContainer(
                    name: type == "Appointed" ? "Appointment ID" : "Job Id",
                    id: 1864,
                  )),
              SizedBox(height: 19),
              if (type == "Appointed")
                jobRequestRowBuilder(context, IconlyLight.profile,
                    "Cleaner Name", "Sturat Musgrave",
                    color: AppTheme.mainGreen),
              jobRequestRowBuilder(context, IconlyLight.time_circle, "Job Time",
                  "17:57 PM - 19:57 PM"),
              jobRequestRowBuilder(
                  context, IconlyLight.paper, "Job Date", "2022/10/01"),
              jobRequestRowBuilder(
                  context, IconlyLight.time_square, "Job Hours", "2:00"),
              jobRequestRowBuilder(
                  context, IconlyLight.chart, "Job Status", "Pending",
                  color: AppTheme.red),
              if (type == null)
                jobRequestRowBuilder(
                    context, IconlyLight.tick_square, "Available Cleaners", "1",
                    color: AppTheme.blue),
              if (pStatus != null)
                jobRequestRowBuilder(
                    context, IconlyLight.bookmark, "Payment Status", pStatus!,
                    color: pStatus == "Pending" ? AppTheme.red : AppTheme.blue),
              if (type != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          title: "Cancel",
                          color: AppTheme.blue,
                          width: MediaQuery.of(context).size.width * 0.28,
                          isGradient: false,
                          vPadding: 14,
                        ),
                        if (pStatus == "Pending")
                          CustomButton(
                            title: "Pay \$20",
                            color: AppTheme.mainGreen,
                            width: MediaQuery.of(context).size.width * 0.28,
                            isGradient: false,
                            vPadding: 14,
                          )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    if (pStatus == "COD")
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          title: "View Cleaner Location",
                          color: AppTheme.mainGreen,
                          onPressed: () {
                            Get.toNamed(Routes.locationPage,
                                arguments: ["Job Completed"]);
                          },
                          width: MediaQuery.of(context).size.width * 0.58,
                          isGradient: false,
                        ),
                      ),
                    if (type == "Completed")
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          title: "Click here to complete rate your service",
                          color: AppTheme.mainGreen,
                          onPressed: () {},
                          isGradient: false,
                        ),
                      ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                )
            ],
          ),
        ));
  }
}
