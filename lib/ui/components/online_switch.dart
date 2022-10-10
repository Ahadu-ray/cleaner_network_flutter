import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';

class OnlineSwitch extends StatelessWidget {
  const OnlineSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
        height: 13,
        child: CupertinoSwitch(
          value: true,
          activeColor: AppTheme.mainGreen,
          onChanged: (val) {},
        ),
      ),
      CustomText("Online",
          style: AppTheme.normalStyle().copyWith(
              color: AppTheme.mainGreen, fontWeight: FontWeight.bold)),
      SizedBox(
        width: 20,
      )
    ]);
  }
}
