import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:cleaner_network_flutter/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';

class CleanerReview extends StatelessWidget {
  CleanerReview({Key? key, required this.status}) : super(key: key);

  String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                child: Image.asset(
                  profile,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stacy Hiking",
                    style: AppTheme.normalStyle()
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      CustomText(
                        status,
                        style: AppTheme.normalStyle().copyWith(
                          color: AppTheme.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        status == "Positive"
                            ? happyFace
                            : status == "Neutral"
                                ? normalFace
                                : sadFace,
                        width: 18,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(9)),
            padding: EdgeInsets.all(15),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus dignissim senectus tellus lorem sed id turpis nec.",
              style: AppTheme.normalStyle2(),
            ),
          )
        ],
      ),
    );
  }
}
