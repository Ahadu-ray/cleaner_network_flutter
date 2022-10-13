import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(title: "Help"),
        withSpace: 180,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 29),
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            CustomText(
              "if you have any query please let us know here and our support team will get in touch as soon as possible",
              style: AppTheme.smallStyle(),
            ),
            SizedBox(
              height: 36,
            ),
            CustomField(
              hint: "Cleaner Don\'t Come",
              label: "Subject",
            ),
            SizedBox(
              height: 45,
            ),
            CustomField(
              hint:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque mi, sed gravida nibh eget. Lectus arcu, scelerisque amet, sit vulputate. Et pellentesque posuere metus, at eget. Molestie variu=tellus. Amet tempor, aliquet posuere lacinia nunc at m",
              label: "Message",
            ),
            SizedBox(
              height: 37,
            ),
            CustomButton(
              title: "Send",
              isGradient: false,
            ),
            SizedBox(
              height: 43,
            ),
            addressCol(IconlyBold.call, "Call us at", [
              "US +1 123 456 789",
              "US +1 123 456 789",
              "US +1 123 456 789"
            ]),
            SizedBox(
              height: 15,
            ),
            addressCol(IconlyBold.message, "Email", [
              "help@cleaner.network",
              "bookigs@cleaner.network",
              "customer@cleaner.network"
            ]),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }

  Widget addressCol(IconData icon, String title, List<String> contents) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              IconlyBold.call,
              color: Colors.black,
              size: 30,
            ),
            CustomText(
              title,
              style: AppTheme.titleStyle2().copyWith(fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: 19,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  contents[index],
                  style: AppTheme.normalStyle()
                      .copyWith(color: AppTheme.mainGreen),
                ),
              );
            },
            itemCount: contents.length,
          ),
        )
      ],
    );
  }
}
