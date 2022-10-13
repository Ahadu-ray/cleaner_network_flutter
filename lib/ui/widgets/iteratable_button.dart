import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/circled_icon_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';

class IterableButton extends StatefulWidget {
  IterableButton(
      {Key? key,
      required this.onChange,
      this.initValue = 1,
      required this.label})
      : super(key: key);

  final ValueSetter<int> onChange;
  int initValue;
  String label;
  @override
  State<IterableButton> createState() => _IterableButtonState();
}

class _IterableButtonState extends State<IterableButton> {
  late int count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          widget.label,
          style: AppTheme.fieldLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircledIconButton(
              iconData: Icons.remove,
              onPressed: () {
                setState(() {
                  count--;
                });
                widget.onChange(count);
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: AppTheme.fieldDecoration(),
              width: 56,
              height: 56,
              child: Center(
                child: Text(
                  count.toString(),
                  style: AppTheme.normalStyle4().copyWith(fontSize: 17),
                ),
              ),
            ),
            CircledIconButton(
              iconData: Icons.add,
              onPressed: () {
                setState(() {
                  count++;
                });
                widget.onChange(count);
              },
            ),
          ],
        ),
      ],
    );
  }
}
