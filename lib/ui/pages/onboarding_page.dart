import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/screens/onboarding_screen.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with TickerProviderStateMixin {
  TabController? controller;
  final PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  onPageChanged(int page) {
    setState(() {
      controller!.index = page;
    });
  }

  List<String> subs = [
    "Here to help find you a quality cleaner.",
    "You are at the right place. Choose your own price per hour, preferred hours, and distance you are willing to travel."
        "Choose by price, locality, or recommendation."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
              height: 360,
              child: PageView(
                onPageChanged: onPageChanged,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  OnBoardingScreen(
                      image: onboarding1,
                      title: "Welcome to Cleaner Network",
                      sub: "Here to help find you a quality cleaner."),
                  OnBoardingScreen(
                      image: onboarding2,
                      title: "Domestic cleaner looking for extra hours?",
                      sub:
                          "You are at the right place. Choose your own price per hour, preferred hours, and distance you are willing to travel."),
                  OnBoardingScreen(
                      image: onboarding2,
                      title: "Find a new Cleaner",
                      sub: "Choose by price, locality, or recommendation."),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                CustomText(
                  subs[controller!.index],
                  style: AppTheme.normalStyle3(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 23,
                ),
                TabPageSelector(
                  controller: controller,
                  color: AppTheme.mainGreen.withOpacity(0.5),
                  selectedColor: AppTheme.mainGreen,
                ),
                SizedBox(
                  height: 50,
                ),
                CustomText(
                  "Sign In As",
                  style: AppTheme.normalStyle().copyWith(fontSize: 11),
                ),
                SizedBox(
                  height: 27,
                ),
                CustomButton(
                  title: "CUSTOMER",
                  onPressed: () {
                    Get.toNamed(Routes.loginPagec);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "CLEANER",
                  isWhite: true,
                  onPressed: () {
                    Get.toNamed(Routes.loginPage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
