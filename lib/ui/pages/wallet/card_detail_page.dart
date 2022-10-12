import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_grad_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CardDetailPage extends StatefulWidget {
  CardDetailPage({Key? key}) : super(key: key);

  @override
  State<CardDetailPage> createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
          appBar: CustomAppBar(
            title: "Card Detail",
          ),
          withSpace: 138,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  CustomText("We Accept", style: AppTheme.normalStyle4()),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 43),
                    child: Image.asset(stripe),
                  ),
                  CustomField(
                    hint: "1234  5678  9123  5432",
                    label: "Credit Card Number",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText("Expiration Date",
                          style: AppTheme.fieldLabelStyle),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(Duration(days: 5 * 365)));
                        },
                        child: Container(
                          decoration: AppTheme.fieldDecoration(),
                          child: CustomText(
                            "Select Date",
                            style: AppTheme.hintStyle(),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomField(
                    hint: "123",
                    isVisible: false,
                    label: "CVV",
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(IconlyBold.lock, color: AppTheme.grey2),
                      CustomText(
                        "This is secure encrypted payment",
                        style: AppTheme.hintStyle2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomButton(
                      title: "Make Payment",
                      vPadding: 20,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
