import 'package:cleaner_network_flutter/ui/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class ScreenWithAppBar extends StatelessWidget {
  ScreenWithAppBar(
      {Key? key,
      required this.appBar,
      required this.child,
      this.withSpace = 220})
      : super(key: key);

  Widget child;
  Widget appBar;
  double withSpace;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: withSpace,
            ),
            Expanded(child: child)
          ],
        ),
        appBar
      ],
    );
  }
}
