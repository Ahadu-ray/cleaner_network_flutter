import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(title: "Select Language"),
        withSpace: 110,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            ListTile(
              title: CustomText(
                "English",
                style: AppTheme.butText().copyWith(color: Colors.black),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
