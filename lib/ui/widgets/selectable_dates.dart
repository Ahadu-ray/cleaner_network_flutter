import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectableDates extends StatefulWidget {
  SelectableDates({Key? key, required this.onSelect}) : super(key: key);
  Function() onSelect;

  @override
  State<SelectableDates> createState() => _SelectableDatesState();
}

class _SelectableDatesState extends State<SelectableDates> {
  int selected = 0;
  DateTime init = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          DateTime temp = init.add(Duration(days: index));
          return Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  width: index == selected ? 78 : 70,
                  height: 116,
                  decoration: AppTheme.calendarCardDecoration(),
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: index == selected ? 5 : 10),
                  clipBehavior: Clip.hardEdge,
                  constraints:
                      BoxConstraints(maxHeight: index == selected ? 108 : 95),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      height: index == selected ? 35 : 30,
                      width: index == selected ? 78 : 70,
                      color: index == 2 ? Colors.redAccent : AppTheme.mainGreen,
                      child: Text(DateFormat.MMM().format(temp),
                          textAlign: TextAlign.center,
                          style: AppTheme.calendarCardTitle()),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          temp.day.toString(),
                          style: AppTheme.calendarCardSelectedTitle().copyWith(
                            color: index == selected ? null : AppTheme.black,
                            fontSize: index == selected ? null : 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(DateFormat.E().format(temp),
                            style: AppTheme.calendarCardTitle().copyWith(
                              color: index == selected
                                  ? AppTheme.mainGreen
                                  : AppTheme.black,
                              fontSize: index == selected ? 20 : 16,
                            ))
                      ],
                    )
                  ]),
                ),
              ),
              if (index == selected)
                Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                      color: AppTheme.mainGreen,
                      borderRadius: BorderRadius.circular(7)),
                  margin: EdgeInsets.only(top: 8),
                )
            ],
          );
        }),
        itemCount: 4,
      ),
    );
  }
}
