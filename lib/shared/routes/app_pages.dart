import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/login_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/login_page_c.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/signup_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home_page_c.dart';
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
      name: Routes.loginPage,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.loginPagec,
      page: () => LoginCPage(),
    ),

    //main

    GetPage(
      name: Routes.homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.homePageC,
      page: () => HomeCPage(),
    ),
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
