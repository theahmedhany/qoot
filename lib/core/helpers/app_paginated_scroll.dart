import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';

class AppPaginatedScroll<T> extends StatefulWidget {
  const AppPaginatedScroll({
    super.key,
    this.enabled = true,
    required this.items,
    required this.getPaginatedItems,
    required this.builder,
    this.onRefresh,
    this.onPagesFinished,
  });

  final bool enabled;

  /// items to display
  final List<T> items;

  /// builder now receives the current items list
  final Widget Function(BuildContext context, List<T> items) builder;

  /// fetch paginated items by page
  final Future<List<T>> Function(int page) getPaginatedItems;

  final Future<void> Function()? onRefresh;
  final void Function(int maxPage)? onPagesFinished;

  @override
  State<AppPaginatedScroll<T>> createState() => _AppPaginatedScrollState<T>();
}

class _AppPaginatedScrollState<T> extends State<AppPaginatedScroll<T>> {
  int page = 1;
  bool isLoading = false;
  late List<T> displayedItems;

  @override
  void initState() {
    super.initState();
    displayedItems = List.from(widget.items);
  }

  void rebuild() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        if (widget.onRefresh != null) {
          page = 1;
          displayedItems.clear();
          rebuild();
          await widget.onRefresh!.call();
        }
      },
      color: Theme.of(context).primaryColor,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (widget.enabled &&
              notification.metrics.extentAfter == 0 &&
              page != 0 &&
              !isLoading) {
            isLoading = true;
            rebuild();
            page++;
            widget.getPaginatedItems(page).then((value) {
              if (value.isEmpty) {
                widget.onPagesFinished?.call(page - 1);
                page = 0;
              }
              displayedItems = List.from(displayedItems)..addAll(value);
              isLoading = false;
              rebuild();
            });
          }
          return false;
        },
        child: Column(
          children: [
            Expanded(
              child: widget.builder(context, displayedItems),
            ),
            if (isLoading)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: CustomLoading(size: 50.sp),
              ),
          ],
        ),
      ),
    );
  }
}
