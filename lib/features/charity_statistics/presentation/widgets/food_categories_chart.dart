import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class FoodCategoriesChart extends StatelessWidget {
  const FoodCategoriesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.customAppColors.grey100),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).charityStatisticsFoodCategoriesDistribution,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey800,
              ),
            ),
            20.h.ph,
            SizedBox(
              height: 210.h,
              child: const _PieChartWithLabels(),
            ),
          ],
        ),
      ),
    );
  }
}

class _PieChartWithLabels extends StatelessWidget {
  const _PieChartWithLabels();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PieChart(
          PieChartData(
            sectionsSpace: 2,
            centerSpaceRadius: 0,
            startDegreeOffset: -90,
            sections: [
              PieChartSectionData(
                value: 35,
                color: const Color(0xFF2BB673),
                title: '',
                radius: 55,
              ),
              PieChartSectionData(
                value: 25,
                color: const Color(0xFFF7941E),
                title: '',
                radius: 55,
              ),
              PieChartSectionData(
                value: 20,
                color: const Color(0xFF3FA9F5),
                title: '',
                radius: 55,
              ),
              PieChartSectionData(
                value: 15,
                color: const Color(0xFF9B59B6),
                title: '',
                radius: 55,
              ),
              PieChartSectionData(
                value: 5,
                color: const Color(0xFFED1C24),
                title: '',
                radius: 55,
              ),
            ],
          ),
        ),
        CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: _LabelPainter(context: context),
        ),
      ],
    );
  }
}

class _LabelPainter extends CustomPainter {
  final BuildContext context;

  _LabelPainter({required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const radius = 55.0;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3;

    final sections = [
      {'value': 35.0, 'color': const Color(0xFF2BB673)},
      {'value': 25.0, 'color': const Color(0xFFF7941E)},
      {'value': 20.0, 'color': const Color(0xFF3FA9F5)},
      {'value': 15.0, 'color': const Color(0xFF9B59B6)},
      {'value': 5.0, 'color': const Color(0xFFED1C24)},
    ];

    double startAngle = -math.pi / 2;
    final total = sections.fold(
      0.0,
      (sum, item) => sum + (item['value'] as double),
    );

    final labels = [
      'Rice &\nGrains: 35.0 %',
      'Meat &\nPoultry: 25.0 %',
      'Vegetables:\n20.0 %',
      'Bread &\nBakery: 15.0 %',
      'Others:\n5.0 %',
    ];

    for (int i = 0; i < sections.length; i++) {
      final sweepAngle = (sections[i]['value'] as double) / total * 2 * math.pi;
      final midAngle = startAngle + sweepAngle / 2;
      final rightSide = math.cos(midAngle) >= 0;
      final start = Offset(
        center.dx + radius * math.cos(midAngle),
        center.dy + radius * math.sin(midAngle),
      );
      final mid = Offset(
        center.dx + (radius + 22) * math.cos(midAngle),
        center.dy + (radius + 22) * math.sin(midAngle),
      );

      final end = Offset(mid.dx + (rightSide ? 25 : -25), mid.dy - 2);

      paint.color = sections[i]['color'] as Color;
      canvas.drawLine(start, mid, paint);
      canvas.drawLine(mid, end, paint);

      final textPainter = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: AppTextStyles.font11Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();

      final labelOffset = Offset(
        rightSide ? end.dx + 3 : end.dx - textPainter.width - 3,
        end.dy - 10,
      );
      textPainter.paint(canvas, labelOffset);

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
