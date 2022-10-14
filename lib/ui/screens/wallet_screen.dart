import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/appbar_actions.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/wallet_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWithAppBar(
      appBar: CustomAppBar(
        title: "Wallet",
        withBg: true,
        hasBack: false,
        action: AppbarActions(),
      ),
      child: Column(
        children: [
          WalletCard(),
          SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.all(50.0),
            child: CustomButton(
              vPadding: 20,
              title: "Add Money",
              onPressed: () {
                Get.toNamed(Routes.setAmountPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
