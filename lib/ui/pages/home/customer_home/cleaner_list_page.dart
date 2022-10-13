import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/customer/cleaner_list_filter.dart';
import 'package:cleaner_network_flutter/ui/components/customer/cleaners_list_item.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/search_field.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CleanersList extends StatelessWidget {
  CleanersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ScreenWithAppBar(
            appBar: CustomAppBar(
              title: "Cleaner List",
              extra: SearchField(
                onFilter: () {
                  Get.bottomSheet(CleanerListFilter());
                },
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CleanerListItem();
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
