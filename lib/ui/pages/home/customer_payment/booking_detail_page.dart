import 'package:cleaner_network_flutter/shared/routes/app_routes.dart';
import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_option_confirm_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/payment_summary_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/wallet_card.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({Key? key}) : super(key: key);

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  String selectedType = "Stripe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWithAppBar(
        appBar: CustomAppBar(
          title: "Booking Details",
          withBg: true,
          hasBack: false,
        ),
        withSpace: 163,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 23),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                SizedBox(
                  height: 17,
                ),
                jobRequestRowBuilder(
                  context,
                  null,
                  "Username",
                  "John Ibrahim",
                ),
                jobRequestRowBuilder(
                  context,
                  null,
                  "Cleaning Address",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla nisl, pellentesque",
                ),
                SizedBox(
                  height: 21,
                ),
                Divider(
                  thickness: 1,
                  endIndent: 20,
                  indent: 20,
                ),
                SizedBox(
                  height: 21,
                ),
                jobRequestRowBuilder(context, IconlyLight.calendar,
                    "Date & Time", "02/10/22     3:14:35"),
                jobRequestRowBuilder(
                    context, IconlyLight.time_circle, "No. of Hour", "1;00"),
                jobRequestRowBuilder(
                    context, IconlyLight.paper, "Order ID", "990"),
                jobRequestRowBuilder(
                    context, IconlyLight.call, "Your Phone", "+123 456 789 99"),
                jobRequestRowBuilder(
                    context, Icons.payment, "Total Price", "\$20"),
                jobRequestRowBuilder(context, IconlyLight.profile,
                    "Your Confirm Cleaner", "Sturat Musgrave"),
                jobRequestRowBuilder(
                    context, IconlyLight.document, "Payment Method", "Cash"),
                jobRequestRowBuilder(context, IconlyLight.message,
                    "Payment Method", "touchdream0609@gmail.com"),
                SizedBox(
                  height: 20,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                CustomButton(
                  title: "Done",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
