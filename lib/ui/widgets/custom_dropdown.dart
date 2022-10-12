import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomDropdown extends StatefulWidget {
  CustomDropdown(
      {Key? key, required this.title, required this.choices, this.hint})
      : super(key: key);
  String? title;
  String? hint;
  List<String> choices;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          CustomText(widget.title!, style: AppTheme.fieldLabelStyle),
        SizedBox(
          height: 7,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.93,
            height: 56,
            decoration: AppTheme.fieldDecoration(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 23),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                  hint: widget.hint != null
                      ? CustomText(widget.hint!,
                          style: AppTheme.normalStyle()
                              .copyWith(fontWeight: FontWeight.w500))
                      : null,
                  items: itemBuilder(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  customItemsHeights: _getCustomItemsHeights(),
                  icon: Icon(
                    IconlyBold.arrow_down_2,
                    color: Colors.black,
                  ),
                  dropdownDecoration: AppTheme.dropdownDecoration()),
            )),
      ],
    );
  }

  itemBuilder() {
    List<DropdownMenuItem<String>> temp = [];
    for (var choice in widget.choices) {
      temp.addAll([
        DropdownMenuItem<String>(
          value: choice,
          child: Row(
            children: [
              Radio(
                  groupValue: selectedValue,
                  activeColor: AppTheme.mainGreen,
                  value: choice,
                  onChanged: (v) {}),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.47,
                child: Text(choice,
                    overflow: TextOverflow.clip,
                    style: AppTheme.normalStyle()
                        .copyWith(fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
        if (choice != widget.choices.last)
          const DropdownMenuItem<String>(
            enabled: false,
            child: Divider(
              color: AppTheme.grey8,
              thickness: 1.5,
              indent: 0,
              endIndent: 0,
            ),
          ),
      ]);
    }
    return temp;
  }

  List<double> _getCustomItemsHeights() {
    List<double> _itemsHeights = [];
    for (var i = 0; i < (widget.choices.length * 2) - 1; i++) {
      if (i.isEven) {
        _itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _itemsHeights.add(4);
      }
    }
    return _itemsHeights;
  }
}
