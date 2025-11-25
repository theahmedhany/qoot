import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import 'selected_day.dart';
import 'today_focused_day.dart';

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
        startingDayOfWeek: isArabic()
            ? StartingDayOfWeek.saturday
            : StartingDayOfWeek.sunday,
        calendarStyle: const CalendarStyle(outsideDaysVisible: false),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronVisible: false,
        ),
        firstDay: DateTime.utc(2010, 10, 10),
        lastDay: DateTime.utc(2035, 10, 10),
        focusedDay: _focusedDay,
        availableGestures: AvailableGestures.none,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: AppTextStyles.font11Bold,
          weekendStyle: AppTextStyles.font11Bold,
          dowTextFormatter: (date, locale) {
            locale = Intl.getCurrentLocale();
            var name = DateFormat.E(locale).format(date);
            if (locale.startsWith('ar')) {
              final arabicMap = {
                DateTime.saturday: 'س',
                DateTime.sunday: 'ح',
                DateTime.monday: 'ن',
                DateTime.tuesday: 'ث',
                DateTime.wednesday: 'ر',
                DateTime.thursday: 'خ',
                DateTime.friday: 'ج',
              };
              name = arabicMap[date.weekday] ?? name;
            }
            return name.characters.first;
          },
        ),

        selectedDayPredicate: (day) {
          if (isSameDay(_selectedDay, day) || isSameDay(day, DateTime.now())) {
            context.read<RestaurantDonationCubit>().getDonationHistory();
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

  bool isArabic() {
    final locale = Intl.getCurrentLocale();
    return locale.startsWith('ar');
  }
}
