import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CleanerListFilter extends StatefulWidget {
  CleanerListFilter({Key? key, this.onSelected}) : super(key: key);

  ValueSetter<String>? onSelected;
  @override
  State<CleanerListFilter> createState() => _CleanerListFilterState();
}

class _CleanerListFilterState extends State<CleanerListFilter> {
  List<String> filters = [
    "Filter By Distance",
    "Filter By Price Per Hour",
    "Filter By Review"
  ];
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.42,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 30,
                color: Color.fromRGBO(0, 0, 0, 0.16))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 8,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.5),
                color: Color(0xFFF2F2F2)),
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            "Apply Filter",
            style: AppTheme.titleStyle2().copyWith(fontSize: 17),
          ),
          SizedBox(
            height: 33,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      setState(() {
                        selected = index;
                      });
                      widget.onSelected ?? (filters[index]);
                      Get.back();
                    },
                    child: Container(
                      height: 53,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                      decoration: AppTheme.fieldDecoration2(),
                      margin:
                          EdgeInsets.symmetric(vertical: 8.5, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              groupValue: selected,
                              activeColor: AppTheme.mainGreen,
                              value: index,
                              onChanged: (v) {}),
                          CustomText(
                            filters[index],
                            style: AppTheme.normalStyle()
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          SizedBox()
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
