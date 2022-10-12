import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/customer/job_request_container.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/job_id_container.dart';
import 'package:cleaner_network_flutter/ui/widgets/status_container.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class JobRequestsScreen extends StatelessWidget {
  const JobRequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return JobRequestContainer();
                  }))
        ],
      ),
    );
  }
}
