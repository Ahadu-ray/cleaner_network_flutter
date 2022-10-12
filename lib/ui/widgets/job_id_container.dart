import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class JobIdContainer extends StatelessWidget {
  JobIdContainer({Key? key, required this.id, this.name = "JOB ID"})
      : super(key: key);

  int id;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.statusBoxDecoration(),
      padding: EdgeInsets.all(10),
      child: CustomText(
        "$name : $id",
        style: AppTheme.titleStyle2().copyWith(
          color: AppTheme.mainGreen,
        ),
      ),
    );
  }
}
