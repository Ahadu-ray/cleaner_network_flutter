import 'dart:developer';

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({Key? key}) : super(key: key);

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 40,
      headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle:
              AppTheme.calendarCardTitle().copyWith(color: AppTheme.blueTitle),
          leftChevronIcon: Container(
            height: 30,
            width: 30,
            decoration: AppTheme.chevronContainerDecoration(),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.chevron_left),
              onPressed: () {},
            ),
          ),
          rightChevronIcon: Container(
            height: 30,
            width: 30,
            decoration: AppTheme.chevronContainerDecoration(),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.chevron_right),
              onPressed: () {},
            ),
          )),
      calendarStyle: CalendarStyle(
        cellAlignment: Alignment.topCenter,
        defaultTextStyle: AppTheme.normalStyle3().copyWith(
          color: AppTheme.blueTitle,
          fontWeight: FontWeight.w500,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: AppTheme.weekStyle(),
          weekendStyle: AppTheme.weekStyle()),
      focusedDay: DateTime.now().add(Duration(days: 2)),
      selectedDayPredicate: (v) {
        return v == selectedDate;
      },
      calendarBuilders: CalendarBuilders(
        todayBuilder: (context, datetime1, datetime2) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  datetime1.day.toString(),
                  style: AppTheme.normalStyle3().copyWith(
                    color: AppTheme.blueTitle,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
            ],
          );
        },
        selectedBuilder: (context, datetime1, datetime2) {
          log("selected $datetime1");
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.mainGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 27,
                height: 27,
                child: Center(
                    child: Text(
                  datetime1.day.toString(),
                  style: AppTheme.titleStyle3().copyWith(color: Colors.white),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.2,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 3.75,
                height: 3.75,
              )
            ],
          );
        },
      ),
      onDaySelected: (first, sec) {
        setState(() {
          selectedDate = first;
        });
      },
      firstDay: DateTime.now().subtract(Duration(days: 365)),
      lastDay: DateTime.now().add(Duration(days: 365)),
    );
  }
}
