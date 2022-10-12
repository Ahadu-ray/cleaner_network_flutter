import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_chips.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetAmountPage extends StatefulWidget {
  SetAmountPage({Key? key}) : super(key: key);

  @override
  State<SetAmountPage> createState() => _SetAmountPageState();
}

class _SetAmountPageState extends State<SetAmountPage> {
  List<int> amounts = [5, 10, 15, 20, 25];

  int amount = 5;
  List<String> tabs = ["Wallet", "History"];

  String selectedTab = "Wallet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
          appBar: CustomAppBar(
            title: "Wallet",
            onRightIcon: () {},
            extra: AppBarChips(
              tabs: tabs,
              onChange: [
                () {
                  setState(() {
                    selectedTab = tabs[0];
                  });
                },
                () {
                  setState(() {
                    selectedTab = tabs[1];
                  });
                }
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(65),
                            border: Border.all(
                              color: AppTheme.mainGreen,
                            ),
                            gradient: amounts[index] == amount
                                ? AppTheme.buttonGrad()
                                : null),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              amount = amounts[index];
                            });
                          },
                          child: Center(
                            child: Text(
                              "+" + amounts[index].toString(),
                              style: AppTheme.hintStyle2.copyWith(
                                  color: amounts[index] == amount
                                      ? Colors.white
                                      : AppTheme.mainGreen),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: amounts.length,
                  ),
                ),
                SizedBox(
                  height: 69,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        "Enter Amount",
                        style: AppTheme.fieldLabelStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: AppTheme.fieldDecoration2(),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: amount.toString(),
                              contentPadding: EdgeInsets.all(15)),
                          onChanged: (v) {
                            setState(() {
                              amount = int.parse(v);
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 39,
                      ),
                      CustomButton(
                        title: "Continue",
                        vPadding: 20,
                        onPressed: () {
                          Get.toNamed(Routes.chooseMethodPage);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
