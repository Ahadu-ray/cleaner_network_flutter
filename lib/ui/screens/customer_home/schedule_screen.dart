import 'package:cleaner_network_flutter/ui/components/customer/job_request_container.dart';
import 'package:cleaner_network_flutter/ui/components/schedule_calendar.dart';
import 'package:flutter/material.dart';

class CustomerScheduleScreen extends StatelessWidget {
  const CustomerScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScheduleCalendar(type: "Customer");
  }
}
