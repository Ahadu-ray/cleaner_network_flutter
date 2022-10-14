import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/customer/job_request_container.dart';
import 'package:cleaner_network_flutter/ui/components/offer_container.dart';
import 'package:cleaner_network_flutter/ui/components/profile_pic_setter.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:flutter/material.dart';

class CustomerSchedulePage extends StatelessWidget {
  const CustomerSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
          appBar: CustomAppBar(
            title: "Schedule",
          ),
          withSpace: 120,
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return JobRequestContainer(
                          pStatus: index == 0 ? "Pending" : "COD",
                          type: "Appointed",
                        );
                      }))
            ],
          )),
    );
  }
}
