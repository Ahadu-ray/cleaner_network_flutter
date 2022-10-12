import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/cleaner_auth/login_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/customer_auth/login_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/signup_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/cleaner_home/home_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/book_appointment_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/cleaner_list_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/home_page.dart';
import 'package:cleaner_network_flutter/ui/pages/location_page.dart';
import 'package:cleaner_network_flutter/ui/pages/onboarding_page.dart';
import 'package:cleaner_network_flutter/ui/pages/wallet/card_detail_page.dart';
import 'package:cleaner_network_flutter/ui/pages/wallet/choose_method_page.dart';
import 'package:cleaner_network_flutter/ui/pages/wallet/set_amount_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static final pages = [
    //auth
    GetPage(
      name: Routes.signupPage,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: Routes.cleanerLoginPage,
      page: () => CleanerLoginPage(),
    ),
    GetPage(
      name: Routes.customerLoginPage,
      page: () => CustomerLoginPage(),
    ),
    GetPage(
      name: Routes.cleanersList,
      page: () => CleanersList(),
    ),

    //main
    //customer
    GetPage(name: Routes.customerHomePage, page: () => CustomerHomePage()),
    GetPage(name: Routes.bookAppointment, page: () => BookAppointment()),

    //cleaner
    GetPage(name: Routes.cleanerHomePage, page: () => CleanerHomePage()),

    //common
    GetPage(
      name: Routes.setAmountPage,
      page: () => SetAmountPage(),
    ),

    GetPage(
      name: Routes.chooseMethodPage,
      page: () => ChooseMethodPage(),
    ),
    GetPage(
      name: Routes.cardDetailPage,
      page: () => CardDetailPage(),
    ),
    GetPage(
      name: Routes.locationPage,
      page: () => LocationPage(),
    ),
    GetPage(
      name: Routes.onboardingPage,
      page: () => OnBoardingPage(),
    ),
  ];
}
