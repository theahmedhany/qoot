import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_cubit.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_state.dart';
import '../donation_history_cell.dart';

class FullDonationHistorySection extends StatefulWidget {
  const FullDonationHistorySection({super.key});

  @override
  State<FullDonationHistorySection> createState() =>
      _FullDonationHistorySectionState();
}

class _FullDonationHistorySectionState
    extends State<FullDonationHistorySection> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<RestaurantDonationCubit>().getDonationHistory(
          loadMore: true,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantDonationCubit, RestaurantDonationState>(
      buildWhen: (previous, current) =>
          (current is Success || current is Loading),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CustomLoading(size: 100)),
          error: (message) => Center(child: Text(message)),
          success: (donations) {
            return ListView.builder(
              itemCount: donations.length,
              controller: _scrollController,
              itemBuilder: (context, index) {
                return Provider(
                  create: (context) => donations[index],
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(bottom: 16.h),
                    child: const DonationHistoryCell(),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
