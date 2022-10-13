import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_button.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateCleanerDialog extends StatefulWidget {
  RateCleanerDialog({Key? key, required this.onDone}) : super(key: key);
  Function() onDone;

  @override
  State<RateCleanerDialog> createState() => _RateCleanerDialogState();
}

class _RateCleanerDialogState extends State<RateCleanerDialog> {
  String choosen = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
          ChoiceChip(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  happyFace,
                  width: 18,
                  color: choosen != "Positive" ? AppTheme.grey1 : Colors.white,
                ),
                SizedBox(width: 10),
                CustomText(
                  "Positive",
                  style: AppTheme.normalStyle().copyWith(
                    color:
                        choosen != "Positive" ? AppTheme.grey1 : Colors.white,
                  ),
                )
              ],
            ),
            selected: choosen == "Positive",
            onSelected: (v) {
              if (v) {
                setState(() {
                  choosen = "Positive";
                });
              } else {
                choosen = "";
              }
            },
            disabledColor: AppTheme.grey1,
            selectedColor: AppTheme.blue,
          ),
          SizedBox(
            height: 16,
          ),
          ChoiceChip(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  normalFace,
                  width: 18,
                  color: choosen != "Neutral" ? AppTheme.grey1 : Colors.white,
                ),
                SizedBox(width: 10),
                CustomText(
                  "Neutral",
                  style: AppTheme.normalStyle().copyWith(
                    color: choosen != "Neutral" ? AppTheme.grey1 : Colors.white,
                  ),
                )
              ],
            ),
            selected: choosen == "Neutral",
            onSelected: (v) {
              if (v) {
                setState(() {
                  choosen = "Neutral";
                });
              } else {
                setState(() {
                  choosen = "";
                });
              }
            },
            selectedColor: AppTheme.yellow,
          ),
          SizedBox(
            height: 16,
          ),
          ChoiceChip(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  sadFace,
                  width: 18,
                  color: choosen != "Negative" ? AppTheme.grey1 : Colors.white,
                ),
                SizedBox(width: 10),
                CustomText(
                  "Negative",
                  style: AppTheme.normalStyle().copyWith(
                    color:
                        choosen != "Negative" ? AppTheme.grey1 : Colors.white,
                  ),
                )
              ],
            ),
            selected: choosen == "Negative",
            onSelected: (v) {
              if (v) {
                setState(() {
                  choosen = "Negative";
                });
              } else {
                setState(() {
                  choosen = "";
                });
              }
            },
            selectedColor: AppTheme.red,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                title: "Cancel",
                inverted: true,
                width: MediaQuery.of(context).size.width * 0.28,
                vPadding: 16,
              ),
              CustomButton(
                title: "Next",
                width: MediaQuery.of(context).size.width * 0.28,
                vPadding: 16,
                onPressed: widget.onDone,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
