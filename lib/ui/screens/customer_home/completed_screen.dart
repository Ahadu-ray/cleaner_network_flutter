import 'package:cleaner_network_flutter/ui/components/customer/job_request_container.dart';
import 'package:flutter/material.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({Key? key}) : super(key: key);

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
                    return JobRequestContainer(
                      pStatus: "COD",
                      type: "Completed",
                    );
                  }))
        ],
      ),
    );
  }
}
