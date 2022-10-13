import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/customer/appbar_chips_c.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/screens/customer_home/completed_screen.dart';
import 'package:cleaner_network_flutter/ui/screens/customer_home/job_request_screen.dart';
import 'package:cleaner_network_flutter/ui/screens/customer_home/schedule_screen.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CustomerHomePage extends StatefulWidget {
  CustomerHomePage({Key? key}) : super(key: key);

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomePage> {
  int _currentIndex = 0;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Appointments",
          onRightIcon: () {},
          extra: SelectableCChips(onChange: [
            () {
              _controller.jumpToPage(0);
            },
            () {
              _controller.jumpToPage(1);
            },
            () {
              _controller.jumpToPage(2);
            },
          ], tabs: [
            "Job Requests",
            "Schedule",
            "Completed"
          ]),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _controller,
              physics: NeverScrollableScrollPhysics(),
              children: [
                JobRequestsScreen(),
                CustomerScheduleScreen(),
                CompletedScreen()
              ],
            ),
            Positioned(
              child: Container(
                decoration: AppTheme.homeBottomDecoration(),
                padding: EdgeInsets.symmetric(vertical: 29, horizontal: 37),
                child: CustomButton(
                  title: "Book Appointment",
                  onPressed: () {
                    Get.toNamed(Routes.bookAppointment);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
  }
}
