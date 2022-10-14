import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/components/confirm_dialog.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

Widget singleRowBuilder(
    BuildContext context, String title, String path, String sub) {
  return Container(
    constraints: BoxConstraints(maxHeight: 50, minHeight: 25),
    margin: EdgeInsets.only(bottom: 4, right: 15),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      path,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: CustomText(
                          title,
                          style: AppTheme.titleStyle2(),
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(":"),
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            sub,
            style: AppTheme.titleStyle2().copyWith(fontSize: 10),
          ),
        ),
      ],
    ),
  );
}

Widget jobRequestRowBuilder(
    BuildContext context, IconData? iconData, String title, String sub,
    {Color color = Colors.black, Function()? onRight}) {
  return Container(
    margin: EdgeInsets.only(bottom: 19),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              child: Row(
                children: [
                  if (iconData != null)
                    Icon(
                      iconData,
                      color: AppTheme.mainGreen,
                    ),
                  if (iconData != null)
                    SizedBox(
                      width: 6,
                    ),
                  Expanded(
                    child: CustomText(title,
                        style: AppTheme.normalStyle3().copyWith(
                          color: AppTheme.grey7,
                        )),
                  )
                ],
              ),
            ),
            Text(":", style: AppTheme.normalStyle3()),
          ],
        ),
        Flexible(
          fit: FlexFit.loose,
          child: InkWell(
              onTap: onRight,
              child: Text(sub,
                  textAlign: TextAlign.end,
                  style: AppTheme.normalStyle3().copyWith(color: color))),
        )
      ],
    ),
  );
}

selectDate({
  required BuildContext context,
  required DateTime firstDate,
  required DateTime lastDate,
  required DateTime initialDate,
}) async {
  final DateTime? selected = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppTheme.mainGreen, // <-- SEE HERE
            onPrimary: Colors.white,
            onSurface: AppTheme.mainGreen, // <-- SEE HERE
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: AppTheme.mainGreen,
            ),
          ),
        ),
        child: child!,
      );
    },
  );

  return selected;
}

selectTime({
  required BuildContext context,
  required TimeOfDay initialTime,
}) async {
  final TimeOfDay? selected = await showTimePicker(
    context: context,
    initialTime: initialTime,
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppTheme.mainGreen, // <-- SEE HERE
            onPrimary: Colors.white,
            onSurface: AppTheme.mainGreen, // <-- SEE HERE
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: AppTheme.mainGreen,
            ),
          ),
        ),
        child: child!,
      );
    },
  );

  return selected;
}
