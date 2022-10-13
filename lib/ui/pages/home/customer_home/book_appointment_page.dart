import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:cleaner_network_flutter/ui/components/dialogs/request_sent_dialog.dart';
import 'package:cleaner_network_flutter/ui/components/map/small_map_view.dart';
import 'package:cleaner_network_flutter/ui/components/screen_with_appbar.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_dropdown.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/ui/widgets/iteratable_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  int bedroom = 1, bathroom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ScreenWithAppBar(
          appBar: CustomAppBar(title: "Book Appointment"),
          withSpace: 0,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(children: [
                SizedBox(
                  height: 173,
                ),
                Container(
                  decoration: AppTheme.coloredButtonDecoration(),
                  padding: EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        "Tell us about the job",
                        style: AppTheme.butText(),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SmallMapView(),
                SizedBox(
                  height: 23,
                ),
                CustomField(
                  hint: "Place, Name or Area Code",
                  label: "Select Location",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IterableButton(
                        onChange: (value) {}, label: "Select Bedrooms"),
                    IterableButton(
                        onChange: (value) {}, label: "Select Bathroom"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  hint: "3",
                  label: "Hours of Cleaning",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  hint: "3/02/2022",
                  label: "Start Date",
                  rightIcon: IconlyLight.calendar,
                  onRightIconTap: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  hint: "3/02/2022",
                  label: "Start Time",
                  rightIcon: IconlyLight.calendar,
                  onRightIconTap: () {
                    showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomField(
                  hint: "3/02/2022",
                  label: "Start Date",
                  rightIcon: IconlyLight.calendar,
                  onRightIconTap: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomDropdown(title: "How Much", choices: ["Just this Day"]),
                SizedBox(
                  height: 35,
                ),
                CustomButton(
                  title: "Next",
                  onPressed: () {
                    Get.dialog(RequestSent(onDone: () {
                      Get.back();
                    }));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
