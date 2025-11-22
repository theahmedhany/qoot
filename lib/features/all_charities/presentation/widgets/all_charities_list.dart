import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< Updated upstream
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/all_charities/presentation/screens/all_charities_screen.dart';
import 'package:qoot/features/all_charities/presentation/widgets/all_charities_card.dart';
=======
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_charities/presentation/manager/all_charities_cubit.dart';
import 'package:qoot/features/all_charities/presentation/manager/all_charities_state.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import 'all_charities_card.dart';
>>>>>>> Stashed changes

class AllCharitiesList extends StatefulWidget {
  const AllCharitiesList({
    super.key,
  });

  @override
  State<AllCharitiesList> createState() => _AllCharitiesListState();
}

class _AllCharitiesListState extends State<AllCharitiesList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isNearBottom()) {
      context.read<AllCharitiesCubit>().loadMoreCharities();
    }
  }

  bool _isNearBottom() {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll - 200);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCharitiesCubit, AllCharitiesState>(
      builder: (context, state) {
        return state.when(
          initial: () => CustomLoading(size: 120.r),
          loading: () => CustomLoading(size: 120.r),
          success: (charities, hasMore, currentPage) {
            if (charities.isEmpty) {
              return Center(
                child: Text(
                  'لا توجد جمعيات متاحة',
                  style: AppTextStyles.font16Regular.copyWith(
                    color: context.customAppColors.grey600,
                  ),
                ),
              );
            }

            return GridView.builder(
              controller: _scrollController,
              padding: EdgeInsets.only(top: 16.r, bottom: 24.r),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemCount: charities.length + (hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == charities.length) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: CustomLoading(size: 40.r),
                    ),
                  );
                }

                return AllCharitiesCard(
                  charity: charities[index],
                  onTap: () {
                    context.pushNamed(
                      Routes.charityDetailsScreen,
                      arguments: charities[index],
                    );
                  },
                );
              },
            );
          },
          loadingMore: (charities) {
            return GridView.builder(
              controller: _scrollController,
              padding: EdgeInsets.only(top: 16.r, bottom: 24.r),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemCount: charities.length + 1,
              itemBuilder: (context, index) {
                if (index == charities.length) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: CustomLoading(size: 40.r),
                    ),
                  );
                }

                return AllCharitiesCard(
                  charity: charities[index],
                  onTap: () {
                    context.pushNamed(
                      Routes.charityDetailsScreen,
                    );
                  },
                );
              },
            );
          },
          error: (message) {
            return Center(
              child: Text(
                'حدث خطأ ما: $message',
                style: AppTextStyles.font16Regular.copyWith(
                  color: context.customAppColors.error700,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
