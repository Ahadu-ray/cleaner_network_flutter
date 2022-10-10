import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class StatusContainer extends StatelessWidget {
  StatusContainer({Key? key, required this.status, this.gap = 5})
      : super(key: key);
  double gap;
//change status to enum when correctly known
  String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.statusBoxDecoration(),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle,
            color: AppTheme.mainGreen,
          ),
          SizedBox(
            width: gap,
          ),
          CustomText(
            status,
            style: AppTheme.titleStyle2().copyWith(
              color: AppTheme.mainGreen,
            ),
          ),
        ],
      ),
    );
  }
}
