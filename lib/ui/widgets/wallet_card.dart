import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          Container(
            decoration: AppTheme.mainCardDecoration(),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 100,
          ),
          Container(
            decoration: AppTheme.mainCardDecoration(),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: AppTheme.walletCardDecoration(),
            padding: EdgeInsets.all(27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(wallet),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText("Wallet",
                            style: AppTheme.titleStyle3()
                                .copyWith(color: Colors.white)),
                        CustomText("Default Payment Method\nCash",
                            style: AppTheme.normalStyle2()
                                .copyWith(color: Colors.white)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText("BALANCE",
                        style: AppTheme.normalStyle2().copyWith(
                            fontWeight: FontWeight.w400, color: Colors.white)),
                    Text(
                      "\$2500",
                      style: AppTheme.butText().copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
