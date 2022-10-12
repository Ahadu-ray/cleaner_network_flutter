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
    BuildContext context, IconData iconData, String title, String sub,
    {Color color = Colors.black}) {
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
                  Icon(
                    iconData,
                    color: AppTheme.mainGreen,
                  ),
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
        Text(sub, style: AppTheme.normalStyle3().copyWith(color: color))
      ],
    ),
  );
}

/// Determine the current position of the device.
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> getCurrentPosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services
    Get.dialog(ConfirmDialog(
      title: 'enable_location'.tr,
      content: 'enable_location_info'.tr,
      actionText: 'ok',
      actionCallback: () => Geolocator.openLocationSettings(),
    ));

    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  print(permission);
  if (permission == LocationPermission.deniedForever) {
    Get.dialog(ConfirmDialog(
      title: '"Taxiye" requires Location Services to work'.tr,
      content:
          'Go to Setting to allow "Taxiye" to determine your location. This will help us set your pickup location and improve our services.'
              .tr,
      actionText: 'ok',
      actionCallback: () => Geolocator.openLocationSettings(),
    ));
  }
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
