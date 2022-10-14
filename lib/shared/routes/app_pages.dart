import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/ui/bindings/cleaner_bindings.dart';
import 'package:cleaner_network_flutter/ui/bindings/customer_bindings.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/cleaner_auth/login_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/customer_auth/login_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/cleaner_auth/signup_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/customer_auth/signup_page.dart';
import 'package:cleaner_network_flutter/ui/pages/auth/reset_password_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/cleaner_home/cleaner_profile_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/cleaner_home/home_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/book_appointment_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/cleaner_list_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/cleaner_live_location_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/customer_profile_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/help_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/home_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/review_cleaner_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_home/view_cleaner_profile_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_payment/booking_detail_page.dart';
import 'package:cleaner_network_flutter/ui/pages/home/customer_payment/customer_payment_options_page.dart';
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
      name: Routes.cleanerSignupPage,
      page: () => CleanerSignUpPage(),
    ),
    GetPage(
      name: Routes.customerSignupPage,
      page: () => CustomerSignUpPage(),
    ),
    GetPage(
      name: Routes.cleanerLoginPage,
      page: () => CleanerLoginPage(),
    ),
    GetPage(
      name: Routes.customerLoginPage,
      page: () => CustomerLoginPage(),
    ),

    //main
    //customer
    GetPage(
        name: Routes.customerHomePage,
        page: () => CustomerHomePage(),
        bindings: [CustomerBindings()]),
    GetPage(name: Routes.bookAppointment, page: () => BookAppointment()),
    GetPage(
      name: Routes.cleanersList,
      page: () => CleanersList(),
    ),
    GetPage(
      name: Routes.viewCleanerProfile,
      page: () => ViewCleanerProfilePage(),
    ),
    GetPage(
      name: Routes.reviewCleanerPage,
      page: () => ReviewCleanerPage(),
    ),
    GetPage(
      name: Routes.customerPaymentOptionsPage,
      page: () => CustomerPaymentOptionsPage(),
    ),
    GetPage(
      name: Routes.bookingDetailPage,
      page: () => BookingDetailsPage(),
    ),

    GetPage(
      name: Routes.cleanerLiveLocation,
      page: () => CleanerLiveLocationPage(),
    ),
    GetPage(
      name: Routes.customerProfilePage,
      page: () => CustomerProfilePage(),
    ),

    //cleaner
    GetPage(
        name: Routes.cleanerHomePage,
        page: () => CleanerHomePage(),
        bindings: [CleanerBindings()]),

    GetPage(
      name: Routes.cleanerProfilePage,
      page: () => CleanerProfilePage(),
    ),
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
    GetPage(
      name: Routes.helpPage,
      page: () => HelpPage(),
    ),
    GetPage(
      name: Routes.resetPasswordPage,
      page: () => ResetPasswordPage(),
    ),
  ];
}
