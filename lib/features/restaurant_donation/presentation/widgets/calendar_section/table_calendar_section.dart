import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/calendar_section/selected_day.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/calendar_section/today_focused_day.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarSection extends StatefulWidget {
  const TableCalendarSection({
    super.key,
  });

  @override
  State<TableCalendarSection> createState() => _TableCalendarSectionState();
}

class _TableCalendarSectionState extends State<TableCalendarSection> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.customAppColors.white,
      child: TableCalendar(
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronVisible: false,
        ),
        firstDay: DateTime.utc(2010, 10, 10),
        lastDay: DateTime.utc(2035, 10, 10),
        focusedDay: _focusedDay,
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (date, locale) {
            return DateFormat.E(locale).format(date).substring(0, 1);
          },
        ),

        selectedDayPredicate: (day) {
          if (isSameDay(_selectedDay, day) || isSameDay(day, DateTime.now())) {
            return true;
          }
          return false;
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(selectedDay, _selectedDay)) {
            _selectedDay = selectedDay;
            setState(() {});
          }
        },

        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, dateTime) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2030),
                      );
                      if (picked != null) {
                        setState(() {
                          _selectedDay = picked;
                          _focusedDay = picked;
                        });
                      }
                    },
                    child: Row(
                      children: [
                        16.w.pw,
                        Text(
                          DateFormat('MMMM yyyy').format(dateTime),
                          style: AppTextStyles.font16Bold.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: context.customAppColors.grey600,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      _focusedDay = DateTime(
                        _focusedDay.year,
                        _focusedDay.month - 1,
                      );
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: context.customAppColors.grey600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _focusedDay = DateTime(
                        _focusedDay.year,
                        _focusedDay.month + 1,
                      );
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.chevron_right,
                      color: context.customAppColors.grey600,
                    ),
                  ),
                ],
              ),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return isSameDay(day, DateTime.now())
                ? TodayFocusedDay(formattedDayString: day.day.toString())
                : SelectedDay(formattedDayString: day.day.toString());
          },
        ),
      ),
    );
  }
}
