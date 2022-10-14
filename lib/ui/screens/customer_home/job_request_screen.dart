import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/customer/job_request_container.dart';
import 'package:cleaner_network_flutter/ui/controllers/customer_controller.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/empty_data_withsvg.dart';
import 'package:cleaner_network_flutter/ui/widgets/job_id_container.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class JobRequestsScreen extends StatelessWidget {
  JobRequestsScreen({Key? key}) : super(key: key);
  CustomerController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          if (_controller.isJobAdded.value) {
            return Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return JobRequestContainer(
                          availCleaners: index == 0 ? 1 : null,
                          type: "Searching");
                    }));
          } else {
            return EmptyDataWithSvg(
              desc:
                  "Your currently do not have any appointments booked. Please click the link below to create a new job request",
              title: "Welcome to your booking page.",
            );
          }
        }),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}
