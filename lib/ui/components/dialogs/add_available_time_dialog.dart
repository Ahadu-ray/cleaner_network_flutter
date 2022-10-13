import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/circled_icon_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_field.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AddAvailableTimeDialog extends StatefulWidget {
  AddAvailableTimeDialog({Key? key}) : super(key: key);

  @override
  State<AddAvailableTimeDialog> createState() => _AddAvailableTimeDialogState();
}

class _AddAvailableTimeDialogState extends State<AddAvailableTimeDialog> {
  List<Widget> fields = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      fields.add(Column(
        children: [
          CustomField(
            hint: "Start",
            isRectangular: true,
            rightIcon: IconlyLight.time_circle,
          ),
          CustomField(
            hint: "End Time",
            isRectangular: true,
            rightIcon: IconlyLight.time_circle,
          ),
        ],
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.66,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 30,
                    color: Color.fromRGBO(0, 0, 0, 0.16))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          padding: EdgeInsets.symmetric(vertical: 29, horizontal: 15),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CustomText(
                  "Availability Time",
                  style: AppTheme.titleStyle2().copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 34,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircledIconButton(
                        iconData: Icons.add,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        "Add Another Time",
                        style: AppTheme.butText().copyWith(
                          color: AppTheme.mainGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 57,
                ),
                CustomButton(
                  title: "Create Event",
                  isGradient: false,
                  vPadding: 16,
                  onPressed: addFields,
                )
              ],
            ),
          )),
    );
  }

  addFields() {
    setState(() {
      fields.add(Column(
        children: [
          CustomField(
            hint: "Start",
            isRectangular: true,
            rightIcon: IconlyLight.time_circle,
          ),
          CustomField(
            hint: "End Time",
            isRectangular: true,
            rightIcon: IconlyLight.time_circle,
          ),
        ],
      ));
    });
  }
}
