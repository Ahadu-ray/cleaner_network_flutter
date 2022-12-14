import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/screens/cleaner_home/availability_screen.dart';
import 'package:cleaner_network_flutter/ui/screens/cleaner_home/job_claim_screen.dart';
import 'package:cleaner_network_flutter/ui/screens/cleaner_home/schedule_screen.dart';
import 'package:cleaner_network_flutter/ui/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CleanerHomePage extends StatefulWidget {
  CleanerHomePage({Key? key}) : super(key: key);

  @override
  State<CleanerHomePage> createState() => _CleanerHomePageState();
}

class _CleanerHomePageState extends State<CleanerHomePage> {
  int _currentIndex = 0;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            children: [
              JobClaimScreen(),
              CleanerScheduleScreen(),
              AvailabilityScreen(),
              WalletScreen()
            ],
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: AppTheme.mainCardDecoration().boxShadow),
              clipBehavior: Clip.hardEdge,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                unselectedItemColor: Colors.grey,
                selectedItemColor: AppTheme.mainGreen,
                selectedLabelStyle: AppTheme.selectedNavTitleStyle(),
                unselectedLabelStyle: AppTheme.unselectedNavTitleStyle(),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      IconlyLight.profile,
                    ),
                    activeIcon: Icon(IconlyBold.profile),
                    label: 'Job claim',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        IconlyLight.calendar,
                      ),
                      activeIcon: Icon(IconlyBold.calendar),
                      label: 'Schedule'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        IconlyLight.time_square,
                      ),
                      activeIcon: Icon(IconlyBold.time_square),
                      label: 'Availability Time'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        IconlyLight.wallet,
                      ),
                      activeIcon: Icon(IconlyBold.wallet),
                      label: 'Wallet'),
                ],
                currentIndex: _currentIndex,
                onTap: _changePage,
              ),
            ),
          ),
        ],
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
